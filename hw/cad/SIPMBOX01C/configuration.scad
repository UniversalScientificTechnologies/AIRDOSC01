$fn=40; // model faces resolution.

//OBECNE PARAMETRY 
//----------------------------------------------------------------
//----------------------------------------------------------------

vyska_krystalu=24;
vyska_sipm=2;
presah_krystalu=6;
rezerva_nad_krystalem=5;
vyska_drzaku_krystalu=vyska_krystalu-presah_krystalu;

hrana_krystalu=6; //čistá hrana

zakladna_krystalu_x=7.8; //0.8mm rezerva hrana SIPM je 7mm
zakladna_krystalu_y=7.8;
sila_steny=2.5;
sila_materialu_zakladny=2;


vyska_zapusti_pro_PCB=0; //výčka krycího matriálu pro PCB a zároveň pro vytvoření vany pro zalití silikonem, kvůli světlotěsnoti.
vyska_SIPM_nad_PCB=2.4; //výška celého SIPM senzoru
tolerance_pro_dotazeni_k_SIPM=-0.5; // kvůli dotažení krystalu k SIPM
velikost_modulu_x=2; //počet der
velikost_modulu_y=4;
rotec_der_modulu=10.16;

vyska_matky=3;
sirka_matky=6.7;
prumer_sroubu=3.4;
prumer_hlavy_sroubu=6;

//Pro díl SIPMBOX01C_D02
D02_velikost_modulu_x=3; //počet der
D02_velikost_modulu_y=4;
D02_vyska_bocniho_prekryvu=6.2;