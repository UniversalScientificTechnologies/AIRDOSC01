# AIRDOSC01
*Scintillation detector of ionizing radiation with a full production specification available. The device can be further modified according to specific requirements. Character of its construction makes it especially suitable for placement into UAVs.*


![AIRDOSC01A front panel](/doc/src/img/AIRDOSC01A_box_front.jpg "AIRDOS front panel")


**Technical parameters are following:** 

* Detection element: scintillating crystal integrated with [SiPM](https://en.wikipedia.org/wiki/Silicon_photomultiplier)
* More than 90 days autonomous operation powered by lithium battery
* Data memory: SD card
* Data logs contains energy and time of each event
* Logging periodicity: 10 s (dead time 2 s)
* Time resolution: 20 us
* Accuracy of event’s time: 500 ns
* Dimensions: 57 x 107 x 167 mm
* Mass in operating condition (including batteries) 1 kg
* Open-source HW and SW
* Device status indicator: LED on panel

**Device block diagram**
![AIRDOSC01A block diagram](hw/sch_pcb/AIRDOSC01A_block.png)

**PCRD05A semiconductor detector schematics**
![AIRDOSC01A - detektor schematics ](hw/sch_pcb/PCRD05A_Detector_Schematics.png)

**SIPM01B schematics**
![SIPM01B schematics ](hw/sch_pcb/SIPM01B_Schematics.png)

**SIPMPOWER01A schematics**
![SIPMPOWER01A schematics ](hw/sch_pcb/SIPMPOWER01A_Schematics.png)

**Production data of electronic modules**

* [SIPMPOWER01A](/hw/sch_pcb/SIPMPOWER01A)
* [SIPM01B](/hw/sch_pcb/SIPM01B/hw/sch_pcb) 
* [PCRD05A](http://mlab.cz/module/PCRD05A) 
* [GPS01B](http://mlab.cz/module/GPS01B) 
* [DATALOGGER01A](http://mlab.cz/module/DATALOGGER01A) 
