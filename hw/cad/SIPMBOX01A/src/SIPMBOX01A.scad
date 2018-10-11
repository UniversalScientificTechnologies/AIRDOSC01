$fn=40; // model faces resolution.
include <../configuration.scad>



PI=3.141592;

module SIPMBOX01A()
{ 

translate([0,0,(vyska_krystalu+sila_steny+vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM)/2]) 
 difference () 
    {
        //základní kvádr
 cube(size = [2*sila_steny+velikost_modulu_x*rotec_der_modulu,2*sila_steny+velikost_modulu_y*rotec_der_modulu,vyska_krystalu+sila_steny+vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM], center = true);
        
        //výřez v hlavním kvádru
translate([0,0,sila_steny]) 
cube(size = [velikost_modulu_x*rotec_der_modulu,velikost_modulu_y*rotec_der_modulu,vyska_krystalu+sila_steny+vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM+0.01], center = true);
        
        //výřez otvorů pro šrouby do kvádru
       translate([(velikost_modulu_x-1)*rotec_der_modulu/2,(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
            cylinder (h = vyska_krystalu+sila_steny+vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM+0.01, r= (prumer_sroubu+0.2)/2, $fn=40, center = true);  
        
     //výřez otvorů pro šrouby do kvádru
       translate([-(velikost_modulu_x-1)*rotec_der_modulu/2,(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
            cylinder (h = vyska_krystalu+sila_steny+vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM+0.01, r= (prumer_sroubu+0.2)/2, $fn=40, center = true);
  
   //výřez otvorů pro šrouby do kvádru
       translate([(velikost_modulu_x-1)*rotec_der_modulu/2,-(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
            cylinder (h = vyska_krystalu+sila_steny+vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM+0.01, r= (prumer_sroubu+0.2)/2, $fn=40, center = true); 
 
  //výřez otvorů pro šrouby do kvádru
       translate([-(velikost_modulu_x-1)*rotec_der_modulu/2,-(velikost_modulu_y-1)*rotec_der_modulu/2,-0.01]) 
            cylinder (h = vyska_krystalu+sila_steny+vyska_zapusti_pro_PCB+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM+0.01, r= (prumer_sroubu+0.2)/2, $fn=40, center = true);         
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
        
        translate([0,0,vyska_krystalu+sila_steny+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM-vyska_matky]) 
            cylinder (h = vyska_matky+0.01, r= (sirka_matky+0.2)/2, $fn=6);
        
        translate([0,0,-0.01]) 
            cylinder (h = vyska_krystalu+sila_steny+vyska_SIPM_nad_PCB+tolerance_pro_dotazeni_k_SIPM+vyska_matky+0.01, r= (prumer_sroubu+0.2)/2, $fn=40);
               
      
    
    }       
}
   

  
 

