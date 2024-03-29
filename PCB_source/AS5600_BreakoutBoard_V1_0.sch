EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L AS560x_breakout:AS5600 U1
U 1 1 594F3E3A
P 2450 1800
F 0 "U1" H 2450 1550 60  0000 C CNN
F 1 "AS5600" H 2450 2050 50  0000 C CNN
F 2 "footprints:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2450 2050 60  0001 C CNN
F 3 "" H 2450 2050 60  0001 C CNN
F 4 "AS5600-ASOT" H 2450 1800 60  0001 C CNN "manf#"
	1    2450 1800
	1    0    0    -1  
$EndComp
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:CONN_01X06 P1
U 1 1 594F3E81
P 800 1600
F 0 "P1" H 800 1950 50  0000 C CNN
F 1 "CONN_01X06" V 900 1600 50  0000 C CNN
F 2 "footprints:USER_SIL-6" H 800 1600 50  0001 C CNN
F 3 "http://akizukidenshi.com/catalog/g/gC-09862/" H 800 1600 50  0001 C CNN
	1    800  1600
	-1   0    0    -1  
$EndComp
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:+5V #PWR01
U 1 1 594F3F87
P 1100 1300
F 0 "#PWR01" H 1100 1150 50  0001 C CNN
F 1 "+5V" H 1100 1440 50  0000 C CNN
F 2 "" H 1100 1300 50  0000 C CNN
F 3 "" H 1100 1300 50  0000 C CNN
	1    1100 1300
	1    0    0    -1  
$EndComp
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:+3.3V #PWR02
U 1 1 594F3FA3
P 1300 1300
F 0 "#PWR02" H 1300 1150 50  0001 C CNN
F 1 "+3.3V" H 1300 1440 50  0000 C CNN
F 2 "" H 1300 1300 50  0000 C CNN
F 3 "" H 1300 1300 50  0000 C CNN
	1    1300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1300 1100 1350
Wire Wire Line
	1100 1350 1000 1350
Wire Wire Line
	1000 1450 1300 1450
Wire Wire Line
	1300 1450 1300 1300
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:GND #PWR03
U 1 1 594F3FC5
P 1300 1950
F 0 "#PWR03" H 1300 1700 50  0001 C CNN
F 1 "GND" H 1300 1800 50  0000 C CNN
F 2 "" H 1300 1950 50  0000 C CNN
F 3 "" H 1300 1950 50  0000 C CNN
	1    1300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1550 1300 1550
Wire Wire Line
	1300 1550 1300 1950
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:+5V #PWR04
U 1 1 594F402D
P 2000 1600
F 0 "#PWR04" H 2000 1450 50  0001 C CNN
F 1 "+5V" H 2000 1740 50  0000 C CNN
F 2 "" H 2000 1600 50  0000 C CNN
F 3 "" H 2000 1600 50  0000 C CNN
	1    2000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1600 2000 1650
Wire Wire Line
	2000 1650 2050 1650
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:+3.3V #PWR05
U 1 1 594F4048
P 1800 1600
F 0 "#PWR05" H 1800 1450 50  0001 C CNN
F 1 "+3.3V" H 1800 1740 50  0000 C CNN
F 2 "" H 1800 1600 50  0000 C CNN
F 3 "" H 1800 1600 50  0000 C CNN
	1    1800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1600 1800 1750
Wire Wire Line
	1800 1750 2050 1750
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:GND #PWR06
U 1 1 594F4065
P 2000 2000
F 0 "#PWR06" H 2000 1750 50  0001 C CNN
F 1 "GND" H 2000 1850 50  0000 C CNN
F 2 "" H 2000 2000 50  0000 C CNN
F 3 "" H 2000 2000 50  0000 C CNN
	1    2000 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2000 2000 1950
Wire Wire Line
	2000 1950 2050 1950
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:GND #PWR07
U 1 1 594F4094
P 2900 2000
F 0 "#PWR07" H 2900 1750 50  0001 C CNN
F 1 "GND" H 2900 1850 50  0000 C CNN
F 2 "" H 2900 2000 50  0000 C CNN
F 3 "" H 2900 2000 50  0000 C CNN
	1    2900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1650 2900 1650
Wire Wire Line
	2900 1650 2900 2000
NoConn ~ 2850 1950
Wire Wire Line
	2850 1750 3200 1750
Wire Wire Line
	2850 1850 3450 1850
Text Label 2950 1750 0    60   ~ 0
SCL
Text Label 2950 1850 0    60   ~ 0
SDA
Text Label 1050 1650 0    60   ~ 0
SCL
Text Label 1050 1750 0    60   ~ 0
SDA
Wire Wire Line
	1000 1750 1250 1750
Wire Wire Line
	1000 1650 1250 1650
Wire Wire Line
	1000 1850 1250 1850
Text Label 1050 1850 0    60   ~ 0
OUT
Text Label 1850 1850 0    60   ~ 0
OUT
Wire Wire Line
	1800 1850 2050 1850
$Comp
L Device:R_Small R1
U 1 1 594F42E7
P 3200 1600
F 0 "R1" H 3230 1620 50  0000 L CNN
F 1 "3.9k" H 3230 1560 50  0000 L CNN
F 2 "footprints:R_0603_HandSoldering" H 3200 1600 50  0001 C CNN
F 3 "" H 3200 1600 50  0001 C CNN
F 4 "" H 3200 1600 60  0001 C CNN "Elecrow PN"
	1    3200 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 594F4454
P 2350 1050
F 0 "C1" H 2360 1120 50  0000 L CNN
F 1 "0.1u" H 2360 970 50  0000 L CNN
F 2 "footprints:C_0603_HandSoldering" H 2350 1050 50  0001 C CNN
F 3 "" H 2350 1050 50  0001 C CNN
	1    2350 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 594F4545
P 2600 1050
F 0 "C2" H 2610 1120 50  0000 L CNN
F 1 "1u" H 2610 970 50  0000 L CNN
F 2 "footprints:C_0603_HandSoldering" H 2600 1050 50  0001 C CNN
F 3 "" H 2600 1050 50  0001 C CNN
	1    2600 1050
	1    0    0    -1  
$EndComp
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:+5V #PWR08
U 1 1 594F4835
P 2350 900
F 0 "#PWR08" H 2350 750 50  0001 C CNN
F 1 "+5V" H 2350 1040 50  0000 C CNN
F 2 "" H 2350 900 50  0000 C CNN
F 3 "" H 2350 900 50  0000 C CNN
	1    2350 900 
	1    0    0    -1  
$EndComp
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:GND #PWR09
U 1 1 594F48CE
P 2350 1200
F 0 "#PWR09" H 2350 950 50  0001 C CNN
F 1 "GND" H 2350 1050 50  0000 C CNN
F 2 "" H 2350 1200 50  0000 C CNN
F 3 "" H 2350 1200 50  0000 C CNN
	1    2350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1200 2350 1150
Wire Wire Line
	2350 950  2350 900 
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:+3.3V #PWR010
U 1 1 594F49EC
P 2600 900
F 0 "#PWR010" H 2600 750 50  0001 C CNN
F 1 "+3.3V" H 2600 1040 50  0000 C CNN
F 2 "" H 2600 900 50  0000 C CNN
F 3 "" H 2600 900 50  0000 C CNN
	1    2600 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 950  2600 900 
Wire Wire Line
	2600 1150 2600 1200
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:GND #PWR011
U 1 1 594F4A5F
P 2600 1200
F 0 "#PWR011" H 2600 950 50  0001 C CNN
F 1 "GND" H 2600 1050 50  0000 C CNN
F 2 "" H 2600 1200 50  0000 C CNN
F 3 "" H 2600 1200 50  0000 C CNN
	1    2600 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1750 3200 1700
$Comp
L Device:R_Small R2
U 1 1 594F4FF9
P 3450 1600
F 0 "R2" H 3480 1620 50  0000 L CNN
F 1 "3.9k" H 3480 1560 50  0000 L CNN
F 2 "footprints:R_0603_HandSoldering" H 3450 1600 50  0001 C CNN
F 3 "" H 3450 1600 50  0001 C CNN
F 4 "" H 3450 1600 60  0001 C CNN "Elecrow PN"
	1    3450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1850 3450 1700
Wire Wire Line
	3200 1450 3300 1450
Wire Wire Line
	3450 1450 3450 1500
Wire Wire Line
	3200 1450 3200 1500
Connection ~ 3300 1450
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:+5V #PWR012
U 1 1 594F5320
P 3300 1300
F 0 "#PWR012" H 3300 1150 50  0001 C CNN
F 1 "+5V" H 3300 1440 50  0000 C CNN
F 2 "" H 3300 1300 50  0000 C CNN
F 3 "" H 3300 1300 50  0000 C CNN
	1    3300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1300 3300 1450
$Comp
L power:PWR_FLAG #FLG013
U 1 1 594F5CE6
P 800 2950
F 0 "#FLG013" H 800 3045 50  0001 C CNN
F 1 "PWR_FLAG" H 800 3130 50  0000 C CNN
F 2 "" H 800 2950 50  0000 C CNN
F 3 "" H 800 2950 50  0000 C CNN
	1    800  2950
	-1   0    0    1   
$EndComp
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:+5V #PWR014
U 1 1 594F5E14
P 800 2900
F 0 "#PWR014" H 800 2750 50  0001 C CNN
F 1 "+5V" H 800 3040 50  0000 C CNN
F 2 "" H 800 2900 50  0000 C CNN
F 3 "" H 800 2900 50  0000 C CNN
	1    800  2900
	1    0    0    -1  
$EndComp
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:+3.3V #PWR015
U 1 1 594F5EEF
P 1150 2900
F 0 "#PWR015" H 1150 2750 50  0001 C CNN
F 1 "+3.3V" H 1150 3040 50  0000 C CNN
F 2 "" H 1150 2900 50  0000 C CNN
F 3 "" H 1150 2900 50  0000 C CNN
	1    1150 2900
	1    0    0    -1  
$EndComp
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:GND #PWR016
U 1 1 594F5FB2
P 1500 3000
F 0 "#PWR016" H 1500 2750 50  0001 C CNN
F 1 "GND" H 1500 2850 50  0000 C CNN
F 2 "" H 1500 3000 50  0000 C CNN
F 3 "" H 1500 3000 50  0000 C CNN
	1    1500 3000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG017
U 1 1 594F6015
P 1150 2950
F 0 "#FLG017" H 1150 3045 50  0001 C CNN
F 1 "PWR_FLAG" H 1150 3130 50  0000 C CNN
F 2 "" H 1150 2950 50  0000 C CNN
F 3 "" H 1150 2950 50  0000 C CNN
	1    1150 2950
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG018
U 1 1 594F605A
P 1500 2900
F 0 "#FLG018" H 1500 2995 50  0001 C CNN
F 1 "PWR_FLAG" H 1500 3080 50  0000 C CNN
F 2 "" H 1500 2900 50  0000 C CNN
F 3 "" H 1500 2900 50  0000 C CNN
	1    1500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2900 1500 3000
Wire Wire Line
	1150 2950 1150 2900
Wire Wire Line
	800  2950 800  2900
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:CONN_01X01 P2
U 1 1 59741010
P 900 3600
F 0 "P2" H 900 3700 50  0000 C CNN
F 1 "MountHole_M3" V 1000 3550 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 900 3600 50  0001 C CNN
F 3 "" H 900 3600 50  0000 C CNN
	1    900  3600
	-1   0    0    -1  
$EndComp
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:CONN_01X01 P3
U 1 1 59741205
P 900 3800
F 0 "P3" H 900 3900 50  0000 C CNN
F 1 "MountHole_M3" V 1000 3800 50  0001 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 900 3800 50  0001 C CNN
F 3 "" H 900 3800 50  0000 C CNN
	1    900  3800
	-1   0    0    -1  
$EndComp
NoConn ~ 1100 3600
NoConn ~ 1100 3800
$Comp
L AS5600_BreakoutBoard_V1_0-rescue:LOGO G1
U 1 1 59741E29
P 950 4250
F 0 "G1" H 950 4187 60  0000 C CNN
F 1 "LOGO" H 950 4400 60  0001 C CNN
F 2 "logos:Logo_DirRot_v01" H 950 4250 60  0001 C CNN
F 3 "" H 950 4250 60  0000 C CNN
	1    950  4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1450 3450 1450
$EndSCHEMATC
