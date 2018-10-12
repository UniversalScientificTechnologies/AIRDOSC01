
//počet děr modulu
modul_x=6;
modul_y=4;

prumer_sroubu=3.2;
delka_sroubu=12;
prumer_hlavy_sroubu=8.2;
vyska_hlavy_sroubu=4.3;
vyska_matky=3;
sirka_matky=6.7;

vzdalenost_der = 10.16; //rozteč děr mezi sebou
sila_steny=4;

pocet_der_zakladny=3;
vyska_zakladny=10;

module PCRDHOLDER01A()
{
difference() {
    union(){
cube([(modul_x)*vzdalenost_der,vyska_zakladny,vzdalenost_der*pocet_der_zakladny],center=false);

cube([(modul_x)*vzdalenost_der,modul_y*vzdalenost_der,sila_steny],center=false);
    
    
     }
     
     
  //otvory pro šroub -uchycení modulu   
  translate([vzdalenost_der/2, vzdalenost_der/2, 0])
  OTVOR_PRO_SROUB();
     
   translate([vzdalenost_der/2+(modul_x-1)*vzdalenost_der, vzdalenost_der/2, 0])
  OTVOR_PRO_SROUB();   
     
   translate([vzdalenost_der/2,vzdalenost_der/2+(modul_y-1)*vzdalenost_der, 0])
  OTVOR_PRO_SROUB();
     
   translate([vzdalenost_der/2+(modul_x-1)*vzdalenost_der, vzdalenost_der/2+(modul_y-1)*vzdalenost_der, 0])
  OTVOR_PRO_SROUB();   
     
 
 //otvory pro šrouby - do ALbase
     
 translate([3*vzdalenost_der/2, 0, 3*vzdalenost_der/2])
  OTVOR_PRO_SROUB2();  
   
 translate([9*vzdalenost_der/2, 0, 3*vzdalenost_der/2])
  OTVOR_PRO_SROUB2();  
 
translate([3*vzdalenost_der/2, 0, 5*vzdalenost_der/2])
  OTVOR_PRO_SROUB2();  
   
 translate([9*vzdalenost_der/2, 0, 5*vzdalenost_der/2])
  OTVOR_PRO_SROUB2();   
     
     
     }
  
   
    
 module OTVOR_PRO_SROUB()  { 
     
       translate([0, 0, (vzdalenost_der*pocet_der_zakladny)/2+sila_steny])
  union(){   
 cylinder(r=prumer_hlavy_sroubu/2,h=vzdalenost_der*pocet_der_zakladny,center=true, $fn=40);  
   
  cylinder(r=prumer_sroubu/2,h=vzdalenost_der*pocet_der_zakladny+3*sila_steny,center=true, $fn=40);  
       
      }
      
      translate([0,0,vyska_matky/2])  // center top screw
      cylinder (h = vyska_matky+0.1, r= (sirka_matky+0.2)/2, center=true, $fn=6);    
      
       }
  
    
       
 module OTVOR_PRO_SROUB2()  { 
     
     rotate([-90, 0, 0])
       
     translate([0, 0, vyska_zakladny/2+2*vyska_matky+2])
  union(){   
 cylinder(r=prumer_hlavy_sroubu/2,h=vyska_zakladny,center=true, $fn=40);  
   
  cylinder(r=prumer_sroubu/2,h=vyska_zakladny+3*sila_steny,center=true, $fn=40);  
       
      }
      
      rotate([-90, 0, 0])
      translate([0,0,((2*vyska_matky)/2)])  // center top screw
      cylinder (h = 2*vyska_matky+0.1, r= (sirka_matky+0.2)/2, center=true, $fn=6);    
      
       }      
     }    
       
       