/* ----- Pin setting -----
   PC4 - Analog   4 - Encoder SDA
   PC5 - Analog   5 - Encoder SCL
   PC0 - Analog   0 - Encoder OUT
*/

#include <stdint.h>
#include <Wire.h>
#define AS5600_AS5601_DEV_ADDRESS       0x36
#define AS5600_AS5601_REG_CONF          0x07
#define AS5600_AS5601_REG_STATUS        0x0B

void Encoder_I2C_init(void){
  byte error;
  uint8_t data;

  // Read AS5601 status register
  Wire.beginTransmission(AS5600_AS5601_DEV_ADDRESS);
  Wire.write(AS5600_AS5601_REG_STATUS);
  Wire.endTransmission(false);
  Wire.requestFrom(AS5600_AS5601_DEV_ADDRESS, 1);
  data = Wire.read();
  data &= 0x38;
  if (data != 0x20)
  {
    Serial.print("Magnet error : ");
    if ( !(data & 0x20) )
      Serial.println("Magnet was not detected");
    if (data & 0x10)
      Serial.println("Magnet too weak");
    if (data & 0x08)
      Serial.println("Magnet too strong");
    Serial.println("Stop");
    for(;;);
  }
  else
    Serial.println("Magnet : OK");

  // Write AS5601 conf
  Wire.beginTransmission(AS5600_AS5601_DEV_ADDRESS);
  Wire.write(AS5600_AS5601_REG_CONF);
  Wire.write(0b00000111);   // WD = 0b0, FTH = 0b001, SF = 0b11
  error = Wire.endTransmission();
  if (error)
  {
    Serial.print("error=");
    Serial.println(error);
  }
  delay(1);
}

void setup() {
  // I2C init
  Wire.begin();
  Wire.setClock(400000);

  // Communication function init
  Serial.begin(115200);
  while (!Serial);

  // Peripheral init
  Encoder_I2C_init();
}

void loop() {
  uint16_t AnalogValue = 0;
  AnalogValue = analogRead(0);
  AnalogValue &= 0x03FF;
  AnalogValue = 0x03FF - AnalogValue;
  Serial.println(AnalogValue);
  delay(200);
}

