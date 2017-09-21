/* ----- Pin setting -----
   PC0 - Analog   0 - Encoder OUT
*/

#include <stdint.h>

void setup() {
  // Communication function init
  Serial.begin(115200);
  while (!Serial);
}

void loop() {
  uint16_t AnalogValue = 0;
  AnalogValue = analogRead(0);
  AnalogValue &= 0x03FF;
  AnalogValue = 0x03FF - AnalogValue;
  // Angle value (0x0000~0x03FF) is stored in AnalogValue
  
  Serial.println(AnalogValue);
  delay(200);
}

