# NeoPixel Coaster
#
# The NeoPixel coaster is a battery driven coaster that light up using NeoPixels. 
# The NeoPixels are driven with an attiny85. 
# The colors of the NeoPixels are temperature dependent and the attiny85 is connected to a thermistor to calculate the appropriate RGB values for.
#
# Programming the attiny85:
#
# Program the Arduino Uno with Arduino as ISP example program
#
# Add support for attiny85 in Arduino IDE:
# Go to preferences in Arduino IDE.
# Add this line to Additional Boards Manager URLs: https://raw.githubusercontent.com/damellis/attiny/ide-1.6.x-boards-manager/package_damellis_attiny_index.json
# Under Tools, select ATtiny25/45/85 board
# Select ATtiny85 as Processor
# Select Internal 8MHz clock
#
# Connect Arduino pin 13 (SCK) to attiny85 pin 7
# Connect Arduino pin 12 (MISO) to attiny85 pin 6
# Connect Arduino pin 11 (MOSI) to attiny85 pin 5
# Connect Arduino pin 10 (RESET) to attiny85 pin 1
# Connect Arduino 5V to attiny85 pin 8
# Connect Arduino GND to attiny85 pin 4
#
# Burn Arduino bootloader to attiny85
# Program the attiny85 from Arduino IDE
#
#
# AVRDUDE programming to be implemented (not supported as of now):
# How to use avrdude for programming HEX-files to the attiny85 using Arduino Uno as ISP:
# Connect the attiny85 in the same way you connect it when programming using the Arduino IDE.
# attiny85 has name t85 in avrdude. Use the following line to verify the attiny85 is connected properly:
# avrdude -c avrisp -b 19200 -p t85 -P COMX -n
# Set 8MHz internal oscillator using these fuse bits: 0xE2 and 0xD9 with the followign line:
# avrdude -c avrisp -b 19200 -p t85 -P COMX -U lfuse:w:0xE2:m -U hfuse:w:0xD9:m
# Program the attiny85 using this line:
# avrdude -P COM1 -b 19200 -c avrisp -p t85 -u -U flash:w:"{HEX-file directory here}\file.hex":i
#
# It can be done using a single line as well:
# avrdude -P COM1 -b 19200 -c avrisp -p t85 -u -U efuse:w:0xFF:m -U lfuse:w:0xE2:m -U hfuse:w:0xD9:m -U flash:w:"{HEX-file directory here}\file.hex":i
#
# Example: avrdude -P COM1 -b 19200 -c avrisp -p t85 -u -U efuse:w:0xFF:m -U lfuse:w:0xE2:m -U hfuse:w:0xD9:m -U flash:w:"C:\Users\Basse\Documents\KiCad\NeoPixel_Coaster\Software\ATTiny85_NeoPixel\ATTiny85_NeoPixel.ino.hex":i