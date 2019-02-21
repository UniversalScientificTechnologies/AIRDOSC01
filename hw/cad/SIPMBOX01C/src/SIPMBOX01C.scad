include <../configuration.scad>
 
  //translate([0,0,10]) 
 //SIPMBOX01B();
 
 
  difference (){
      union() {
 //Zakladna
 translate([-(velikost_modulu_x * rotec_der_modulu)/2+2,-(velikost_modulu_y * rotec_der_modulu)/2+2,0])
 
 minkowski()
{
  cube([velikost_modulu_x * rotec_der_modulu-2*2,velikost_modulu_y * rotec_der_modulu-2*2,sila_materialu_zakladny]);
  cylinder(r=2,h=0.1);
}


//drzak krystalu
 translate([-(zakladna_krystalu_x+2*sila_steny)/2+2,-(zakladna_krystalu_y+2*sila_steny)/2+2,0])
 
 minkowski()
{
  cube([zakladna_krystalu_x-2*2+2*sila_steny,zakladna_krystalu_y-2*2+2*sila_steny,vyska_drzaku_krystalu]);
  cylinder(r=2,h=0.1);
}
}
//otvor na sroub 1
translate([(velikost_modulu_x-1)*rotec_der_modulu/2,(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
 
 translate([0,0,-0.01]) 
        cylinder (h = sila_materialu_zakladny+0.12, r= (prumer_sroubu+0.2)/2, $fn=40);


 //otvor na sroub 2
    translate([-(velikost_modulu_x-1)*rotec_der_modulu/2,(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
      translate([0,0,-0.01]) 
        cylinder (h = sila_materialu_zakladny+0.12, r= (prumer_sroubu+0.2)/2, $fn=40);

    //otvor na sroub 3
    translate([(velikost_modulu_x-1)*rotec_der_modulu/2,-(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
      translate([0,0,-0.01]) 
        cylinder (h = sila_materialu_zakladny+0.12, r= (prumer_sroubu+0.2)/2, $fn=40);
//otvor na sroub 4
    translate([-(velikost_modulu_x-1)*rotec_der_modulu/2,-(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
      translate([0,0,-0.01]) 
        cylinder (h = sila_materialu_zakladny+0.12, r= (prumer_sroubu+0.2)/2, $fn=40);
 
 
 //otvor na krystal
 
 translate([-(zakladna_krystalu_x)/2,-(zakladna_krystalu_y)/2,0])
 cube([zakladna_krystalu_x,zakladna_krystalu_y,vyska_drzaku_krystalu+0.12]);
} 
 
module SIPMBOX01B()
{ 

  crystal_refletctor_thickness = 0.4;

 translate([0,0,(vyska_krystalu+sila_steny+vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM)/2]) 
    difference (){
      //základní kvádr
      cube([ 2 * sila_steny + velikost_modulu_x * rotec_der_modulu + 2 * crystal_refletctor_thickness, 2 * sila_steny+velikost_modulu_y*rotec_der_modulu, vyska_krystalu + sila_steny + vyska_zapusti_pro_PCB + vyska_SIPM_nad_PCB + tolerance_pro_dotazeni_k_SIPM], center = true);
        
      //výřez v hlavním kvádru
      translate([0,0,(vyska_krystalu + sila_steny + vyska_zapusti_pro_PCB + vyska_SIPM_nad_PCB + tolerance_pro_dotazeni_k_SIPM)/2-(vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM)/2]) 
        cube([velikost_modulu_x * rotec_der_modulu + 2 * crystal_refletctor_thickness, velikost_modulu_y * rotec_der_modulu, vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM+0.01], center = true);
        
         //výřez v hlavním kvádru pro krystaly
      translate([0,0,-(vyska_krystalu + sila_steny + vyska_zapusti_pro_PCB + vyska_SIPM_nad_PCB + tolerance_pro_dotazeni_k_SIPM)/2+sila_steny+vyska_krystalu/2]) 
        cube([zakladna_krystalu_x, zakladna_krystalu_y, vyska_krystalu+0.01], center = true);
        
        
      //výřez otvorů pro šrouby do kvádru
      translate([(velikost_modulu_x-1)*rotec_der_modulu/2,(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
        cylinder (h = vyska_krystalu+sila_steny+vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM+0.01, r= (prumer_sroubu+0.2)/2, $fn=40, center = true);  
        
   //výřez otvorů pro zapuštění šroubu do kvádru
      translate([(velikost_modulu_x-1)*rotec_der_modulu/2,(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
        cylinder (h = vyska_krystalu+sila_steny+vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM+0.01, r= (prumer_hlavy_sroubu+0.2)/2, $fn=40, center = true);       
        
        
        
      //výřez otvorů pro šrouby do kvádru
      translate([-(velikost_modulu_x-1)*rotec_der_modulu/2,(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
        cylinder (h = vyska_krystalu+sila_steny+vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM+0.01, r= (prumer_sroubu+0.2)/2, $fn=40, center = true);
        
      //výřez otvorů pro zapuštění šroubu do kvádru   
         translate([-(velikost_modulu_x-1)*rotec_der_modulu/2,(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
        cylinder (h = vyska_krystalu+sila_steny+vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM+0.01, r= (prumer_hlavy_sroubu+0.2)/2, $fn=40, center = true);
  
      //výřez otvorů pro šrouby do kvádru
      translate([(velikost_modulu_x-1)*rotec_der_modulu/2,-(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
        cylinder (h = vyska_krystalu+sila_steny+vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM+0.01, r= (prumer_sroubu+0.2)/2, $fn=40, center = true); 
      
    //výřez otvorů pro zapuštění šroubu do kvádru    
         translate([(velikost_modulu_x-1)*rotec_der_modulu/2,-(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
        cylinder (h = vyska_krystalu+sila_steny+vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM+0.01, r= (prumer_hlavy_sroubu+0.2)/2, $fn=40, center = true); 
 
      //výřez otvorů pro šrouby do kvádru
      translate([-(velikost_modulu_x-1)*rotec_der_modulu/2,-(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
        cylinder (h = vyska_krystalu+sila_steny+vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM+0.01, r= (prumer_sroubu+0.2)/2, $fn=40, center = true);  
 
//výřez otvorů pro zapuštění šroubu do kvádru  
  translate([-(velikost_modulu_x-1)*rotec_der_modulu/2,-(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
        cylinder (h = vyska_krystalu+sila_steny+vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM+0.01, r= (prumer_hlavy_sroubu+0.2)/2, $fn=40, center = true); 
        
    }

    //sloupek1  
    translate([(velikost_modulu_x-1)*rotec_der_modulu/2,(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
      SLOUPEK();

    //výřez otvorů pro šrouby do kvádru
    translate([-(velikost_modulu_x-1)*rotec_der_modulu/2,(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
      SLOUPEK();

    //výřez otvorů pro šrouby do kvádru
    translate([(velikost_modulu_x-1)*rotec_der_modulu/2,-(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
      SLOUPEK();

    //výřez otvorů pro šrouby do kvádru
    translate([-(velikost_modulu_x-1)*rotec_der_modulu/2,-(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
      SLOUPEK();
}
