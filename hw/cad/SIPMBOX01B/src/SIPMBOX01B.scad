include <../configuration.scad>
 
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

//sloupek na senzor
module SLOUPEK()
{    
  translate([0,0,0]) 
    difference () 
    {  
      cylinder (h = vyska_krystalu+sila_steny+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM, r= sirka_matky/2+(sila_steny-1)/2, $fn=20);
      
           
      translate([0,0,-0.01]) 
        cylinder (h = vyska_krystalu+sila_steny+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM+vyska_matky+0.01, r= (prumer_sroubu+0.2)/2, $fn=40);
    
     translate([0,0,-0.01]) 
        cylinder (h = vyska_krystalu+tolerance_pro_dotazeni_k_SIPM, r= (prumer_hlavy_sroubu+0.2)/2, $fn=40);   
       
        
        }       
}
   

  
 

