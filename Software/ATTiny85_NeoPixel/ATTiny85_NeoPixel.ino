#include <Adafruit_NeoPixel.h>

#define PIN       0
#define sensPIN   PB3
#define buttonPIN PB4
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

int chase = 1;

int fade = 1;
int fadeInt = 0;
int fadeClr = 1;

int buttonPushCounter = 0;   // counter for the number of button presses
int buttonState = 0;         // current state of the button
int lastButtonState = 0;     // previous state of the button

Adafruit_NeoPixel pixels = Adafruit_NeoPixel(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

void setup() {
  pixels.begin();
  pinMode(sensPIN,INPUT);
  pinMode(buttonPIN, INPUT);
  for(int i=0;i<NUMPIXELS;i++) {
    pixels.setPixelColor(i, pixels.Color(r,g,b));
  }
}

void loop() {
  buttonState = digitalRead(buttonPIN);
  if (buttonState != lastButtonState) {
    // if the state has changed, increment the counter
    if (buttonState == HIGH) {
      // if the current state is HIGH then the button went from off to on:
      buttonPushCounter++;
      if (buttonPushCounter > 6) {
        buttonPushCounter = 1;
      }
    }
    delay(50);
  }
  // save the current state as the last state, for next time through the loop
  lastButtonState = buttonState;

  switch (buttonPushCounter) {
    case 0:
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
    if (T < 25) {
      b = 25 - T;
      if (b < 0)
      {
        b = 0;
      }
    }
  
  
    //Green
    if (T < 20) {
      g = (T-10)*2.5;
    }
    if (T > 20) {
      g = 40 - (T-20)*2.5;
    }
    if (g < 0) {
      g = 0;
    }
  
    //Red
    if (T > 15) {
      r = T-15;
    }
    if (r > 25) {
      r = 25;
    }
  
    //Limit to 25
    if(b > 25) {
      b = 25;
    }
    if(r > 25) {
      r = 25;
    }
  
    //Update LEDs
    for(int i=0;i<8;i++) {
      pixels.setPixelColor(i, pixels.Color(r,g,b));
      pixels.show();
    }
    
  case 1: //Red
    for(int i=0;i<8;i++) {
      pixels.setPixelColor(i, pixels.Color(20,0,0));
      pixels.show();
    }
    
  case 2: //Green
    for(int i=0;i<8;i++) {
      pixels.setPixelColor(i, pixels.Color(0,20,0));
      pixels.show();
    }
    
  case 3: //Blue
    for(int i=0;i<8;i++) {
      pixels.setPixelColor(i, pixels.Color(0,0,20));
      pixels.show();
    }
    
  case 4: //White
    for(int i=0;i<8;i++) {
      pixels.setPixelColor(i, pixels.Color(20,20,20));
      pixels.show();
    }
    
  case 5: //Chase
    if (chase == 9) {
      chase = 1;
    }    
    for(int i=0;i<8;i++) {
      pixels.setPixelColor(i, pixels.Color(0,0,0));
      pixels.show();
    }
    pixels.setPixelColor(chase, pixels.Color(20,20,20));
    pixels.show();
    chase++;
    delay(delayval); //Twice delayval for slower chase
    
  case 6:  //RGB Fade
    if (fadeInt == 20) {
      fade = 0;
    }
    if (fadeInt == 0) {
      fadeClr++;
    }
    if (fadeClr > 3) {
      fadeClr = 1;
    }
    switch(fadeClr) {
      case 1:
      for(int i=0;i<8;i++) {
        pixels.setPixelColor(i, pixels.Color(fadeInt,0,0));
        pixels.show();
      }
      case 2:
      for(int i=0;i<8;i++) {
        pixels.setPixelColor(i, pixels.Color(0,fadeInt,0));
        pixels.show();
      }
      case 3:
      for(int i=0;i<8;i++) {
        pixels.setPixelColor(i, pixels.Color(0,0,fadeInt));
        pixels.show();
      }
      if (fade == 1) {
        fadeInt++;
      }
      else {
        fadeInt--;
      }
    }
    
  }

  delay(delayval);
}
