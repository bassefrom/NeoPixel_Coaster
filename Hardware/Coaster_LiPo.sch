EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Neopixel Coaster"
Date "2021-01-26"
Rev "C"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Sebastian From"
$EndDescr
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20SU U2
U 1 1 60105C6B
P 2450 5300
F 0 "U2" H 1921 5346 50  0000 R CNN
F 1 "ATtiny85-20SU" H 1921 5255 50  0000 R CNN
F 2 "Package_SO:SOIJ-8_5.3x5.3mm_P1.27mm" H 2450 5300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 2450 5300 50  0001 C CNN
F 4 "C89852" H 2450 5300 50  0001 C CNN "LCSC"
	1    2450 5300
	1    0    0    -1  
$EndComp
$Comp
L Battery_Management:MCP73831-2-OT U1
U 1 1 6010C17E
P 2850 1850
F 0 "U1" H 2850 2331 50  0000 C CNN
F 1 "MCP73831-2-OT" H 2850 2240 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2900 1600 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 2700 1800 50  0001 C CNN
	1    2850 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6010DCBE
P 1800 1700
F 0 "C1" H 1685 1654 50  0000 R CNN
F 1 "4.7u" H 1685 1745 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1838 1550 50  0001 C CNN
F 3 "~" H 1800 1700 50  0001 C CNN
F 4 "C29823" H 1800 1700 50  0001 C CNN "LCSC"
	1    1800 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 601116DB
P 2450 2100
F 0 "R2" H 2520 2146 50  0000 L CNN
F 1 "4.7k" H 2520 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2380 2100 50  0001 C CNN
F 3 "~" H 2450 2100 50  0001 C CNN
F 4 "C17936" H 2450 2100 50  0001 C CNN "LCSC"
	1    2450 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2150 2850 2250
$Comp
L Device:C C2
U 1 1 60112B6C
P 3550 1900
F 0 "C2" H 3435 1854 50  0000 R CNN
F 1 "4.7u" H 3435 1945 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3588 1750 50  0001 C CNN
F 3 "~" H 3550 1900 50  0001 C CNN
F 4 "C29823" H 3550 1900 50  0001 C CNN "LCSC"
	1    3550 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 6011395E
P 3950 1950
F 0 "BT1" H 4068 2046 50  0000 L CNN
F 1 "Battery_Cell" H 4068 1955 50  0000 L CNN
F 2 "MyOwn:Batteri LiPo 3.7V 400mAh" V 3950 2010 50  0001 C CNN
F 3 "~" V 3950 2010 50  0001 C CNN
	1    3950 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1750 3550 1750
Wire Wire Line
	3950 1750 3550 1750
Connection ~ 3550 1750
$Comp
L power:GND #PWR0101
U 1 1 60115DDC
P 3550 2050
F 0 "#PWR0101" H 3550 1800 50  0001 C CNN
F 1 "GND" H 3555 1877 50  0000 C CNN
F 2 "" H 3550 2050 50  0001 C CNN
F 3 "" H 3550 2050 50  0001 C CNN
	1    3550 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 601168F3
P 3950 2050
F 0 "#PWR0102" H 3950 1800 50  0001 C CNN
F 1 "GND" H 3955 1877 50  0000 C CNN
F 2 "" H 3950 2050 50  0001 C CNN
F 3 "" H 3950 2050 50  0001 C CNN
	1    3950 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1550 2850 1300
$Comp
L power:GND #PWR0103
U 1 1 60117181
P 1800 2050
F 0 "#PWR0103" H 1800 1800 50  0001 C CNN
F 1 "GND" H 1805 1877 50  0000 C CNN
F 2 "" H 1800 2050 50  0001 C CNN
F 3 "" H 1800 2050 50  0001 C CNN
	1    1800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1950 3350 1950
$Comp
L Device:R R1
U 1 1 6011ACB5
P 2200 2100
F 0 "R1" H 2270 2146 50  0000 L CNN
F 1 "2.2k" H 2270 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2130 2100 50  0001 C CNN
F 3 "~" H 2200 2100 50  0001 C CNN
F 4 " C4410" H 2200 2100 50  0001 C CNN "LCSC"
	1    2200 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1550 2200 1550
Connection ~ 2850 1550
Wire Wire Line
	2200 2500 3350 2500
$Comp
L Connector:USB_B_Mini J1
U 1 1 60125CFA
P 1100 1500
F 0 "J1" H 1157 1967 50  0000 C CNN
F 1 "USB_B_Mini" H 1157 1876 50  0000 C CNN
F 2 "Connector_USB:USB_Mini-B_Lumberg_2486_01_Horizontal" H 1250 1450 50  0001 C CNN
F 3 "~" H 1250 1450 50  0001 C CNN
F 4 "C91144" H 1100 1500 50  0001 C CNN "LCSC"
	1    1100 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60126F90
P 1050 2050
F 0 "#PWR0104" H 1050 1800 50  0001 C CNN
F 1 "GND" H 1055 1877 50  0000 C CNN
F 2 "" H 1050 2050 50  0001 C CNN
F 3 "" H 1050 2050 50  0001 C CNN
	1    1050 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1900 1050 1900
Connection ~ 1050 1900
Wire Wire Line
	1050 1900 1100 1900
Wire Wire Line
	1400 1300 1800 1300
Connection ~ 1800 1300
Wire Wire Line
	1800 1300 2850 1300
Wire Wire Line
	1050 1900 1050 2050
Wire Wire Line
	1800 2050 1800 1850
Wire Wire Line
	1800 1300 1800 1550
NoConn ~ 1400 1700
NoConn ~ 1400 1600
NoConn ~ 1400 1500
Text GLabel 4800 1650 2    50   Input ~ 0
Vcc
Wire Wire Line
	4250 1750 3950 1750
Connection ~ 3950 1750
Text GLabel 2450 4500 1    50   Input ~ 0
Vcc
Wire Wire Line
	2450 4700 2450 4500
$Comp
L power:GND #PWR0105
U 1 1 6012CBE7
P 2450 6050
F 0 "#PWR0105" H 2450 5800 50  0001 C CNN
F 1 "GND" H 2455 5877 50  0000 C CNN
F 2 "" H 2450 6050 50  0001 C CNN
F 3 "" H 2450 6050 50  0001 C CNN
	1    2450 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6050 2450 5900
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J2
U 1 1 60116896
P 2450 3500
F 0 "J2" H 2500 3817 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 2500 3726 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x03_P1.27mm_Vertical_SMD" H 2450 3500 50  0001 C CNN
F 3 "~" H 2450 3500 50  0001 C CNN
	1    2450 3500
	1    0    0    -1  
$EndComp
Text GLabel 2050 3400 0    50   Input ~ 0
MISO
Wire Wire Line
	2050 3400 2250 3400
Text GLabel 2050 3500 0    50   Input ~ 0
SCK
Text GLabel 2050 3600 0    50   Input ~ 0
Reset
Text GLabel 3000 3500 2    50   Input ~ 0
MOSI
Wire Wire Line
	2750 3400 3000 3400
Wire Wire Line
	2750 3500 3000 3500
Wire Wire Line
	2250 3600 2050 3600
Wire Wire Line
	2050 3500 2250 3500
$Comp
L power:GND #PWR0106
U 1 1 6011A1A5
P 2900 3700
F 0 "#PWR0106" H 2900 3450 50  0001 C CNN
F 1 "GND" H 2905 3527 50  0000 C CNN
F 2 "" H 2900 3700 50  0001 C CNN
F 3 "" H 2900 3700 50  0001 C CNN
	1    2900 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3700 2900 3600
Wire Wire Line
	2900 3600 2750 3600
Text GLabel 3250 5000 2    50   Input ~ 0
MOSI
Text GLabel 3250 5100 2    50   Input ~ 0
MISO
Text GLabel 3250 5200 2    50   Input ~ 0
SCK
Text GLabel 3250 5500 2    50   Input ~ 0
Reset
Wire Wire Line
	3250 5000 3150 5000
Wire Wire Line
	3050 5100 3250 5100
Wire Wire Line
	3250 5200 3050 5200
Wire Wire Line
	3050 5500 3250 5500
$Comp
L Device:R R3
U 1 1 6011D0DE
P 5350 3950
F 0 "R3" H 5420 3996 50  0000 L CNN
F 1 "100k" H 5420 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5280 3950 50  0001 C CNN
F 3 "~" H 5350 3950 50  0001 C CNN
F 4 "C17900" H 5350 3950 50  0001 C CNN "LCSC"
	1    5350 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor TH1
U 1 1 6011D7F2
P 5350 4500
F 0 "TH1" H 5455 4546 50  0000 L CNN
F 1 "Thermistor" H 5455 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 5350 4500 50  0001 C CNN
F 3 "~" H 5350 4500 50  0001 C CNN
	1    5350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1650 4650 1650
NoConn ~ 4650 1850
Text GLabel 3000 3400 2    50   Input ~ 0
Vcc
Text GLabel 5350 3650 1    50   Input ~ 0
Vcc
Wire Wire Line
	5350 3650 5350 3800
$Comp
L power:GND #PWR0107
U 1 1 60128C8D
P 5350 4800
F 0 "#PWR0107" H 5350 4550 50  0001 C CNN
F 1 "GND" H 5355 4627 50  0000 C CNN
F 2 "" H 5350 4800 50  0001 C CNN
F 3 "" H 5350 4800 50  0001 C CNN
	1    5350 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4800 5350 4700
Wire Wire Line
	5350 4300 5350 4200
Text GLabel 5150 4200 0    50   Input ~ 0
SensOut
Wire Wire Line
	5150 4200 5350 4200
Connection ~ 5350 4200
Wire Wire Line
	5350 4200 5350 4100
Text GLabel 3250 5300 2    50   Input ~ 0
SensOut
Wire Wire Line
	3250 5300 3050 5300
NoConn ~ 3050 5400
Text GLabel 3250 4750 2    50   Input ~ 0
PixelData
Wire Wire Line
	3250 4750 3150 4750
Wire Wire Line
	3150 4750 3150 5000
Connection ~ 3150 5000
Wire Wire Line
	3150 5000 3050 5000
$Comp
L Device:LED D1
U 1 1 60171AC8
P 2200 1700
F 0 "D1" V 2239 1582 50  0000 R CNN
F 1 "LED" V 2148 1582 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 2200 1700 50  0001 C CNN
F 3 "~" H 2200 1700 50  0001 C CNN
F 4 "C93133" V 2200 1700 50  0001 C CNN "LCSC"
	1    2200 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 1950 2200 1850
Wire Wire Line
	2450 2250 2850 2250
$Comp
L LED:SK6812 D2
U 1 1 6016A9CE
P 7050 2050
F 0 "D2" H 7394 2096 50  0000 L CNN
F 1 "SK6812" H 7394 2005 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812_PLCC4_5.0x5.0mm_P3.2mm" H 7100 1750 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/1138/SK6812+LED+datasheet+.pdf" H 7150 1675 50  0001 L TNN
F 4 "C114586" H 7050 2050 50  0001 C CNN "LCSC"
	1    7050 2050
	1    0    0    -1  
$EndComp
$Comp
L LED:SK6812 D3
U 1 1 6016BBDB
P 7650 2050
F 0 "D3" H 7994 2096 50  0000 L CNN
F 1 "SK6812" H 7994 2005 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812_PLCC4_5.0x5.0mm_P3.2mm" H 7700 1750 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/1138/SK6812+LED+datasheet+.pdf" H 7750 1675 50  0001 L TNN
F 4 "C114586" H 7650 2050 50  0001 C CNN "LCSC"
	1    7650 2050
	1    0    0    -1  
$EndComp
$Comp
L LED:SK6812 D4
U 1 1 6016C402
P 8250 2050
F 0 "D4" H 8594 2096 50  0000 L CNN
F 1 "SK6812" H 8594 2005 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812_PLCC4_5.0x5.0mm_P3.2mm" H 8300 1750 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/1138/SK6812+LED+datasheet+.pdf" H 8350 1675 50  0001 L TNN
F 4 "C114586" H 8250 2050 50  0001 C CNN "LCSC"
	1    8250 2050
	1    0    0    -1  
$EndComp
$Comp
L LED:SK6812 D5
U 1 1 6016CA6C
P 8850 2050
F 0 "D5" H 9194 2096 50  0000 L CNN
F 1 "SK6812" H 9194 2005 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812_PLCC4_5.0x5.0mm_P3.2mm" H 8900 1750 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/1138/SK6812+LED+datasheet+.pdf" H 8950 1675 50  0001 L TNN
F 4 "C114586" H 8850 2050 50  0001 C CNN "LCSC"
	1    8850 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 6016DE61
P 7050 2350
F 0 "#PWR0108" H 7050 2100 50  0001 C CNN
F 1 "GND" H 7055 2177 50  0000 C CNN
F 2 "" H 7050 2350 50  0001 C CNN
F 3 "" H 7050 2350 50  0001 C CNN
	1    7050 2350
	1    0    0    -1  
$EndComp
Text GLabel 7050 1750 1    50   Input ~ 0
Vcc
Wire Wire Line
	7050 1750 7650 1750
Wire Wire Line
	7650 1750 8250 1750
Connection ~ 7650 1750
Wire Wire Line
	8250 1750 8850 1750
Connection ~ 8250 1750
Wire Wire Line
	8850 2350 8250 2350
Wire Wire Line
	7650 2350 8250 2350
Connection ~ 8250 2350
Wire Wire Line
	7650 2350 7050 2350
Connection ~ 7650 2350
Connection ~ 7050 2350
Text GLabel 6750 2050 0    50   Input ~ 0
PixelData
$Comp
L Switch:SW_SPDT SW1
U 1 1 60192932
P 4450 1750
F 0 "SW1" H 4450 2035 50  0000 C CNN
F 1 "SW_SPDT" H 4450 1944 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_PCM12" H 4450 1750 50  0001 C CNN
F 3 "~" H 4450 1750 50  0001 C CNN
F 4 "C136659" H 4450 1750 50  0001 C CNN "LCSC"
	1    4450 1750
	1    0    0    -1  
$EndComp
NoConn ~ 9150 2050
$Comp
L power:GND #PWR0109
U 1 1 601AC885
P 2850 2250
F 0 "#PWR0109" H 2850 2000 50  0001 C CNN
F 1 "GND" H 2855 2077 50  0000 C CNN
F 2 "" H 2850 2250 50  0001 C CNN
F 3 "" H 2850 2250 50  0001 C CNN
	1    2850 2250
	1    0    0    -1  
$EndComp
Connection ~ 2850 2250
Wire Wire Line
	3350 1950 3350 2500
Wire Wire Line
	2200 2250 2200 2500
$EndSCHEMATC
