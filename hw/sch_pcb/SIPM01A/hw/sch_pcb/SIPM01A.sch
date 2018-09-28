EESchema Schematic File Version 4
LIBS:SIPM01A-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "NAME"
Date "%F"
Rev "REV"
Comp "Mlab www.mlab.cz"
Comment1 "VERSION"
Comment2 "Short description \\nTwo lines are maximum"
Comment3 "nickname <email@example.com>"
Comment4 "BSD"
$EndDescr
$Comp
L MLAB_MECHANICAL:HOLE M1
U 1 1 549D7549
P 10200 700
F 0 "M1" V 10100 700 60  0000 C CNN
F 1 "HOLE" H 10200 600 60  0001 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10200 700 60  0001 C CNN
F 3 "" H 10200 700 60  0000 C CNN
	1    10200 700 
	0    -1   -1   0   
$EndComp
$Comp
L MLAB_MECHANICAL:HOLE M2
U 1 1 549D7628
P 10400 700
F 0 "M2" V 10300 700 60  0000 C CNN
F 1 "HOLE" H 10400 600 60  0001 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10400 700 60  0001 C CNN
F 3 "" H 10400 700 60  0000 C CNN
	1    10400 700 
	0    -1   -1   0   
$EndComp
$Comp
L MLAB_MECHANICAL:HOLE M3
U 1 1 549D7646
P 10600 700
F 0 "M3" V 10500 700 60  0000 C CNN
F 1 "HOLE" H 10600 600 60  0001 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10600 700 60  0001 C CNN
F 3 "" H 10600 700 60  0000 C CNN
	1    10600 700 
	0    -1   -1   0   
$EndComp
$Comp
L MLAB_MECHANICAL:HOLE M4
U 1 1 549D7665
P 10800 700
F 0 "M4" V 10700 700 60  0000 C CNN
F 1 "HOLE" H 10800 600 60  0001 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 10800 700 60  0001 C CNN
F 3 "" H 10800 700 60  0000 C CNN
	1    10800 700 
	0    -1   -1   0   
$EndComp
Wire Notes Line
	10100 550  11100 550 
Wire Notes Line
	11100 550  11100 950 
Wire Notes Line
	11100 950  10100 950 
Wire Notes Line
	10100 950  10100 550 
Text Notes 10100 950  0    60   ~ 0
MOUNTING HOLES
$Comp
L MLAB_IO:ARRAYC-60035-4P-BGA U1
U 1 1 5BABA2C7
P 8450 3450
F 0 "U1" H 8829 3478 60  0000 L CNN
F 1 "ARRAYC-60035-4P-BGA" H 8829 3372 60  0000 L CNN
F 2 "Mlab_D:ArrayC-60035-4P-BGA" H 8200 3700 60  0001 C CNN
F 3 "" H 8200 3700 60  0001 C CNN
	1    8450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3950 3350 3750
Wire Wire Line
	3350 3450 3350 3400
Text Label 3700 3400 0    60   ~ 0
U1
Wire Wire Line
	8450 3650 8450 3850
Wire Wire Line
	8450 3850 8600 3850
$Comp
L power:GND #PWR02
U 1 1 5BAC7DDD
P 11000 650
F 0 "#PWR02" H 11000 400 50  0001 C CNN
F 1 "GND" H 11005 477 50  0000 C CNN
F 2 "" H 11000 650 50  0001 C CNN
F 3 "" H 11000 650 50  0001 C CNN
	1    11000 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 650  10200 600 
Wire Wire Line
	10200 600  10400 600 
Wire Wire Line
	11000 600  11000 650 
Wire Wire Line
	10400 650  10400 600 
Connection ~ 10400 600 
Wire Wire Line
	10400 600  10600 600 
Wire Wire Line
	10600 650  10600 600 
Connection ~ 10600 600 
Wire Wire Line
	10600 600  10800 600 
Wire Wire Line
	10800 650  10800 600 
Connection ~ 10800 600 
Wire Wire Line
	10800 600  11000 600 
Text Label 8100 3250 0    60   ~ 0
U1
Text Label 8350 3250 0    60   ~ 0
U2
Text Label 8550 3250 0    60   ~ 0
U3
Text Label 8750 3250 0    60   ~ 0
U4
Wire Wire Line
	8100 3300 8100 3250
Wire Wire Line
	8350 3300 8350 3250
Wire Wire Line
	8550 3300 8550 3250
Wire Wire Line
	8750 3300 8750 3250
$Comp
L power:GND #PWR01
U 1 1 5BAD1A71
P 8550 4200
F 0 "#PWR01" H 8550 3950 50  0001 C CNN
F 1 "GND" H 8555 4027 50  0000 C CNN
F 2 "" H 8550 4200 50  0001 C CNN
F 3 "" H 8550 4200 50  0001 C CNN
	1    8550 4200
	1    0    0    -1  
$EndComp
Text Label 5050 3400 0    60   ~ 0
U2
Text Label 6400 3400 0    60   ~ 0
U3
Text Label 7750 3400 0    60   ~ 0
U4
$Comp
L MLAB_Jumpers:CONN_2 J5
U 1 1 5BAEAC09
P 8900 3900
F 0 "J5" H 8879 3918 50  0000 L CNN
F 1 "CONN_2" H 8879 3834 40  0000 L CNN
F 2 "Mlab_Pin_Headers:SMD_1_2_4x2" H 8950 3850 60  0001 C CNN
F 3 "" H 8950 3850 60  0000 C CNN
	1    8900 3900
	1    0    0    -1  
$EndComp
$Comp
L MLAB_Jumpers:CONN_2 J6
U 1 1 5BAF1BBD
P 8900 4100
F 0 "J6" H 8879 4118 50  0000 L CNN
F 1 "CONN_2" H 8879 4034 40  0000 L CNN
F 2 "Mlab_Pin_Headers:SMD_1_2_4x2" H 8950 4050 60  0001 C CNN
F 3 "" H 8950 4050 60  0000 C CNN
	1    8900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4050 8550 4050
Wire Wire Line
	8550 4050 8550 4150
Wire Wire Line
	8600 4150 8550 4150
Connection ~ 8550 4150
Wire Wire Line
	8550 4150 8550 4200
$Comp
L Device:EMI_Filter_C C1
U 1 1 5BAF331F
P 3050 3500
F 0 "C1" H 3050 3805 50  0000 C CNN
F 1 "EMI_Filter_C" H 3050 3714 50  0000 C CNN
F 2 "Mlab_L:FIR_1806" V 3050 3500 50  0001 C CNN
F 3 "http://www.murata.com/~/media/webrenewal/support/library/catalog/products/emc/emifil/c31e.ashx?la=en-gb" V 3050 3500 50  0001 C CNN
	1    3050 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3400 3350 3400
Connection ~ 3350 3400
Wire Wire Line
	3050 3600 3050 3950
Wire Wire Line
	2750 3400 2850 3400
Wire Wire Line
	7400 3950 7400 3750
Wire Wire Line
	7400 3450 7400 3400
$Comp
L Device:EMI_Filter_C C10
U 1 1 5BAF9BE7
P 7100 3500
F 0 "C10" H 7100 3805 50  0000 C CNN
F 1 "EMI_Filter_C" H 7100 3714 50  0000 C CNN
F 2 "Mlab_L:FIR_1806" V 7100 3500 50  0001 C CNN
F 3 "http://www.murata.com/~/media/webrenewal/support/library/catalog/products/emc/emifil/c31e.ashx?la=en-gb" V 7100 3500 50  0001 C CNN
	1    7100 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3400 7400 3400
Connection ~ 7400 3400
Wire Wire Line
	7100 3600 7100 3950
Wire Wire Line
	6800 3400 6900 3400
Wire Wire Line
	6050 3950 6050 3750
Wire Wire Line
	6050 3450 6050 3400
$Comp
L Device:EMI_Filter_C C7
U 1 1 5BAFA37B
P 5750 3500
F 0 "C7" H 5750 3805 50  0000 C CNN
F 1 "EMI_Filter_C" H 5750 3714 50  0000 C CNN
F 2 "Mlab_L:FIR_1806" V 5750 3500 50  0001 C CNN
F 3 "http://www.murata.com/~/media/webrenewal/support/library/catalog/products/emc/emifil/c31e.ashx?la=en-gb" V 5750 3500 50  0001 C CNN
	1    5750 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3400 6050 3400
Connection ~ 6050 3400
Wire Wire Line
	5750 3600 5750 3950
Wire Wire Line
	5450 3400 5550 3400
Wire Wire Line
	4700 3950 4700 3750
Wire Wire Line
	4700 3450 4700 3400
$Comp
L Device:EMI_Filter_C C4
U 1 1 5BAFAF2A
P 4400 3500
F 0 "C4" H 4400 3805 50  0000 C CNN
F 1 "EMI_Filter_C" H 4400 3714 50  0000 C CNN
F 2 "Mlab_L:FIR_1806" V 4400 3500 50  0001 C CNN
F 3 "http://www.murata.com/~/media/webrenewal/support/library/catalog/products/emc/emifil/c31e.ashx?la=en-gb" V 4400 3500 50  0001 C CNN
	1    4400 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3400 4700 3400
Connection ~ 4700 3400
Wire Wire Line
	4400 3600 4400 3950
Wire Wire Line
	4100 3400 4200 3400
Connection ~ 3350 3950
Wire Wire Line
	3050 3950 3350 3950
Connection ~ 4400 3950
Wire Wire Line
	4400 3950 4700 3950
Connection ~ 4700 3950
Connection ~ 5750 3950
Wire Wire Line
	5750 3950 6050 3950
Connection ~ 6050 3950
Connection ~ 7100 3950
Wire Wire Line
	7100 3950 7400 3950
Connection ~ 7400 3950
Text Label 2750 3400 2    60   ~ 0
U1in
Text Label 4100 3400 2    60   ~ 0
U2in
Text Label 5450 3400 2    60   ~ 0
U3in
Text Label 6800 3400 2    60   ~ 0
U4in
Wire Wire Line
	1500 3200 1550 3200
Wire Wire Line
	1500 3300 1550 3300
Wire Wire Line
	1500 3400 1550 3400
Wire Wire Line
	1500 3500 1550 3500
Text Label 1550 3200 0    60   ~ 0
U1in
Text Label 1550 3300 0    60   ~ 0
U2in
Text Label 1550 3400 0    60   ~ 0
U3in
Text Label 1550 3500 0    60   ~ 0
U4in
$Comp
L MLAB_HEADER:HEADER_1x01 J1
U 1 1 5BB085DF
P 1300 3200
F 0 "J1" H 1550 3200 60  0000 C CNN
F 1 "HEADER_1x01" H 1219 3069 60  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x01" H 1300 3200 60  0001 C CNN
F 3 "" H 1300 3200 60  0000 C CNN
	1    1300 3200
	-1   0    0    1   
$EndComp
$Comp
L MLAB_HEADER:HEADER_1x01 J2
U 1 1 5BB087E2
P 1300 3300
F 0 "J2" H 1550 3300 60  0000 C CNN
F 1 "HEADER_1x01" H 1219 3169 60  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x01" H 1300 3300 60  0001 C CNN
F 3 "" H 1300 3300 60  0000 C CNN
	1    1300 3300
	-1   0    0    1   
$EndComp
$Comp
L MLAB_HEADER:HEADER_1x01 J3
U 1 1 5BB0881C
P 1300 3400
F 0 "J3" H 1550 3400 60  0000 C CNN
F 1 "HEADER_1x01" H 1219 3269 60  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x01" H 1300 3400 60  0001 C CNN
F 3 "" H 1300 3400 60  0000 C CNN
	1    1300 3400
	-1   0    0    1   
$EndComp
$Comp
L MLAB_HEADER:HEADER_1x01 J4
U 1 1 5BB08858
P 1300 3500
F 0 "J4" H 1550 3500 60  0000 C CNN
F 1 "HEADER_1x01" H 1219 3369 60  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x01" H 1300 3500 60  0001 C CNN
F 3 "" H 1300 3500 60  0000 C CNN
	1    1300 3500
	-1   0    0    1   
$EndComp
Text Label 8450 3850 0    60   ~ 0
K
Wire Wire Line
	3350 3400 3700 3400
Wire Wire Line
	3350 3950 4400 3950
Wire Wire Line
	4700 3400 5050 3400
Wire Wire Line
	4700 3950 5750 3950
Wire Wire Line
	6050 3400 6400 3400
Wire Wire Line
	6050 3950 7100 3950
Wire Wire Line
	7400 3950 8600 3950
Wire Wire Line
	7400 3400 7750 3400
$Comp
L MLAB_HEADER:HEADER_1x01 J7
U 1 1 5BB090B2
P 2850 3950
F 0 "J7" H 3100 3950 60  0000 C CNN
F 1 "HEADER_1x01" H 2769 3819 60  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_1x01" H 2850 3950 60  0001 C CNN
F 3 "" H 2850 3950 60  0000 C CNN
	1    2850 3950
	-1   0    0    1   
$EndComp
Connection ~ 3050 3950
Text Label 8450 3950 0    60   ~ 0
+
$Comp
L Device:CP C2
U 1 1 5BB0957A
P 3350 3600
F 0 "C2" H 3232 3554 50  0000 R CNN
F 1 "CP" H 3232 3645 50  0000 R CNN
F 2 "Mlab_C:TantalC_SizeC_Reflow" H 3388 3450 50  0001 C CNN
F 3 "~" H 3350 3600 50  0001 C CNN
	1    3350 3600
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C3
U 1 1 5BB09763
P 4700 3600
F 0 "C3" H 4582 3554 50  0000 R CNN
F 1 "CP" H 4582 3645 50  0000 R CNN
F 2 "Mlab_C:TantalC_SizeC_Reflow" H 4738 3450 50  0001 C CNN
F 3 "~" H 4700 3600 50  0001 C CNN
	1    4700 3600
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C5
U 1 1 5BB097A9
P 6050 3600
F 0 "C5" H 5932 3554 50  0000 R CNN
F 1 "CP" H 5932 3645 50  0000 R CNN
F 2 "Mlab_C:TantalC_SizeC_Reflow" H 6088 3450 50  0001 C CNN
F 3 "~" H 6050 3600 50  0001 C CNN
	1    6050 3600
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C6
U 1 1 5BB09840
P 7400 3600
F 0 "C6" H 7282 3554 50  0000 R CNN
F 1 "CP" H 7282 3645 50  0000 R CNN
F 2 "Mlab_C:TantalC_SizeC_Reflow" H 7438 3450 50  0001 C CNN
F 3 "~" H 7400 3600 50  0001 C CNN
	1    7400 3600
	-1   0    0    1   
$EndComp
$EndSCHEMATC
