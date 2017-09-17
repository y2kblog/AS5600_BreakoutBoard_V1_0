

# 12bit磁気式エンコーダAS5600 Breakout Board


<img src="/images/EncoderPCB_image.png" width="500px">

12 bit 分解能の磁気式アブソリュートエンコーダ AS5600 (ams AG製) を2.54mmピッチに変換する基板です。ネオジム磁石を同梱。  
5V、3.3V、GNDの電源ピンとI2C、アナログ/PWM出力のピンが出ています。電源電圧は5Vもしくは3.3Vです。  
**※AS5601との違いはAS5601の出力方式がA/B相のインクリメンタル出力であるのに対し、AS5600はアナログ/PWM出力である点です。**  

※本ボードは[DCモータ制御シールドV1.0](https://github.com/y2kblog/DCMotorControlShieldV1_0)にも使用しています。

## AS5600の特徴
- 12 bit(4096)/1回転の高分解能
- 磁気式のため非接触で角度計測が可能であり、信頼性と耐久性に優れている
- インターフェイス：I2C、アナログ出力もしくはPWM出力
- アナログ出力：角度に対応したアナログ電圧値を出力
- PWM出力：角度に対応したデューティ比のPWM信号を出力
- I2C：設定レジスタにアクセスでき、角度の読み取りや動作設定が可能
- サンプリング時間：150μs
- AS5600とネオジム磁石の中心が1mm程度ずれても値の読み取りが可能

## 基板仕様
- 基板サイズ：横20mm×縦13.5ｍｍ
- 基板マウント用穴：15mmピッチ、M3×2穴
- AS5600の中心位置：横方向は中央、縦方向はピン側の基板端から10.2mm
- 電源電圧に5Vを供給する場合は3.3Vピンをオープンに、3.3Vを供給する場合は5Vピンにも3.3Vを供給してください。
- DIRピンはGNDに接続、PGOピンは非接続

## 販売
検討中

## 内容物
- AS5600 Breakout Board 本体
- ネオジム磁石

## 取付方法
1. 同梱のネオジム磁石を回転体の軸中心に取り付けます
2. AS5600の中心とネオジム磁石の中心が合うよう基板を固定部に取り付けます

**取付例**  
<img src="/images/Assemble_sample.jpg" width="250px">

## Arduinoによるプログラム例  
 
### I2Cのみを用いた角度の取得  
#### 配線図  
<img src="/images/WiringDiagram_I2C.png" width="400px">

#### ソースファイルのディレクトリ  
"SampleCode/Arduino/I2C_SampleCode/I2C_SampleCode.ino"

#### 最小構成  

    #include <stdint.h>
    #include <Wire.h>
    #define AS5600_AS5601_DEV_ADDRESS      0x36
    #define AS5600_AS5601_REG_RAW_ANGLE    0x0C

    void setup() {
      // I2C init
      Wire.begin();
      Wire.setClock(400000);

      // Read RAW_ANGLE value from encoder
      Wire.beginTransmission(AS5600_AS5601_DEV_ADDRESS);
      Wire.write(AS5600_AS5601_REG_RAW_ANGLE);
      Wire.endTransmission(false);
      Wire.requestFrom(AS5600_AS5601_DEV_ADDRESS, 2);
      uint16_t RawAngle = 0;
      RawAngle  = ((uint16_t)Wire.read() << 8) & 0x0F00;
      RawAngle |= (uint16_t)Wire.read();
      // Raw angle value (0x0000~0x0FFF) is stored in RawAngle
    }

    void loop() {
    }

### アナログ出力ピンを用いた角度の取得  
#### 配線図  
<img src="/images/WiringDiagram_Analog.png" width="400px">

#### ソースファイルのディレクトリ  
"SampleCode/Arduino/I2C_SampleCode/Analog_SampleCode.ino"


<!--
#### HAL (STM32)

**サンプルコード**

    // I2Cの初期化は終わっているとする

    #define AS5600_AS5601_DEV_ADDRESS      (0x36<<1)
    #define AS5600_AS5601_REG_RAW_ANGLE    0x0C

    uint8_t buf[2];
    HAL_I2C_Mem_Read(&hi2c, AS5600_AS5601_DEV_ADDRESS,
      AS5600_AS5601_REG_RAW_ANGLE, I2C_MEMADD_SIZE_8BIT,
      (uint8_t*)buf, 2, 1000);
    uint16_t RawAngle;
    RawAngle = (uint16_t) buf[0] << 8 | (uint16_t) buf[1];
    RawAngle &= 0x0FFF;
    // Raw angle value (0x0000~0x0FFF) is stored in RawAngle
-->

## License
MIT License
