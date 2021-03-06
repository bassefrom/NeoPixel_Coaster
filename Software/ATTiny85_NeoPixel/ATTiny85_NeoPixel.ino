#include <Adafruit_NeoPixel.h>

#define PIN       0
#define sensPIN   PB3
#define NUMPIXELS 16

int delayval = 100;
long randNumer;
float Rref = 100000;
float const_A1 = 0.003354016;
float const_B1 = 0.0002460382;
float const_C1 = 0.000003405377;
float const_D1 = 0.000000103424;
float R, A, B, C, D, T;
int r = 0;
int g = 0;
int b = 0;

Adafruit_NeoPixel pixels = Adafruit_NeoPixel(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

void setup() {
  pixels.begin();
  pinMode(sensPIN,INPUT);
  for(int i=0;i<NUMPIXELS;i++)
  {
    pixels.setPixelColor(i, pixels.Color(r,g,b));
  }
}

void loop() { 
  //Steinhart equation for T in Celsius from ADC value
  float X = analogRead(sensPIN);
  R = ((X/1023)*Rref/(1-(X/1023)));
  A = const_A1;
  B = const_B1 * log(R/Rref);
  C = const_C1 * pow(log(R/Rref), 2);
  D = const_D1 * pow(log(R/Rref), 3);
  T = 1/(A + B + C + D) - 273.15;
  r = 0;
  g = 0;
  b = 0;

  //Blue
  if (T < 25)
  {
    b = 25 - T;
    if (b < 0)
    {
      b = 0;
    }
  }


  //Green
  if (T < 20)
  {
    g = (T-10)*2.5;
  }
  if (T > 20)
  {
    g = 40 - (T-20)*2.5;
  }
  if (g < 0)
  {
    g = 0;
  }

  //Red
  if (T > 15) 
  {
    r = T-15;
  }
  if (r > 25)
  {
    r = 25;
  }

  //Limit to 25
  if(b > 25)
  {
    b = 25;
  }
  if(r > 25)
  {
    r = 25;
  }

  //Update LEDs
  for(int i=0;i<4;i++)
  {
    pixels.setPixelColor(i, pixels.Color(r,g,b));
    pixels.show(); // This sends the updated pixel color to the hardware.
  }
  delay(delayval);
}
