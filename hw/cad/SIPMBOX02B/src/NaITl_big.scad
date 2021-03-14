include <../configuration.scad>
 
/*
difference (){
SIPMBOX01C_D05();
 
translate([-(hrana_krystalu)/2,-(hrana_krystalu)/2,0])
         
   cube([100,100,100]);   
    
}
*/

/*
difference (){
      union() {
translate([0,0,7])
          
          translate([-rotec_der_modulu/2,0,0])
          SIPMBOX01C_D01();
          
         
SIPMBOX01C_D02();

translate([-rotec_der_modulu/2,0,0])
SIPMBOX01C_D06();


SIPMBOX01C_D07();
 
 
translate([-10/2,-(D02_velikost_modulu_y+2)*rotec_der_modulu/2,sila_materialu_zakladny+vyska_krystalu+rezerva_nad_krystalem])          
SIPMBOX01C_D08();          
          

translate([-rotec_der_modulu/2,0,0])
SIPMBOX01C_D03();

translate([-(hrana_krystalu)/2,-(hrana_krystalu)/2,0])
cube([hrana_krystalu,hrana_krystalu,vyska_krystalu+vyska_sipm]);
          }
   cube([100,100,100]);       
          
          }

//*/



 SIPMBOX01C_D01();

//SIPMBOX01C_D06();

//SIPMBOX01C_D02();


 

module SIPMBOX01C_D08()
{
  vyska_sloupku=3;
   difference () 
    {
   union()       {   
    cube([10,(D02_velikost_modulu_y+2)*rotec_der_modulu,2],center=false); 
        translate([10/2,0,0]) 
        cylinder (h = 3, r= 10/2, $fn=20);
        
     translate([10/2,(D02_velikost_modulu_y+2)*rotec_der_modulu,0]) 
        cylinder (h = 3, r= 10/2, $fn=20);
    }
    
     translate([10/2,0,-0.01]) 
            cylinder (h = vyska_sloupku+1, r= (prumer_sroubu+0.2)/2, $fn=40);
    
     translate([10/2,(D02_velikost_modulu_y+2)*rotec_der_modulu,-0.01]) 
            cylinder (h = vyska_sloupku+1, r= (prumer_sroubu+0.2)/2, $fn=40);
    
    
    }
    
    
       
}





module SIPMBOX01C_D07() //drzak na ALBASE
{
  difference (){
      union() {
 //Zakladna
 translate([-((D02_velikost_modulu_x) * rotec_der_modulu+2*sila_materialu_zakladny)/2,-((D02_velikost_modulu_y+2) * rotec_der_modulu+2*sila_materialu_zakladny)/2,0])
 
 minkowski()
{
  cube([(D02_velikost_modulu_x) * rotec_der_modulu+2*sila_materialu_zakladny,(D02_velikost_modulu_y+2) * rotec_der_modulu+2*sila_materialu_zakladny,D07_vyska]);
  cylinder(r=2,h=0.1);
}







}

//otvor na cely scintilacni detektor 
translate([-(D02_velikost_modulu_x * rotec_der_modulu+2*sila_materialu_zakladny)/2+2-1,-(D02_velikost_modulu_y * rotec_der_modulu+2*sila_materialu_zakladny)/2+2-1,0])
 
 minkowski()
{
  cube([D02_velikost_modulu_x * rotec_der_modulu-2*2+2+2*sila_materialu_zakladny,D02_velikost_modulu_y * rotec_der_modulu-2*2+2+2*sila_materialu_zakladny,D07_vyska]);
  cylinder(r=2,h=0.1);
}


//otvor na sroub 1
translate([-(D02_velikost_modulu_x-1)*rotec_der_modulu/2,(D02_velikost_modulu_y+2)*rotec_der_modulu/2,-0.01]) 
    translate([0,0,-0.01]) 
        {
        cylinder (h = D07_vyska+0.12, r= (prumer_sroubu+0.2)/2, $fn=40);
    
        cylinder (h = vyska_matky, r= (sirka_matky+0.2)/2, $fn=6);
      
        }

//otvor na sroub 2
translate([(D02_velikost_modulu_x-1)*rotec_der_modulu/2,(D02_velikost_modulu_y+2)*rotec_der_modulu/2,-0.01]) 
    translate([0,0,-0.01]) 
        {
        cylinder (h = D07_vyska+0.12, r= (prumer_sroubu+0.2)/2, $fn=40);
    
        cylinder (h = vyska_matky, r= (sirka_matky+0.2)/2, $fn=6);
      
        }

//otvor na sroub 3
translate([-(D02_velikost_modulu_x-1)*rotec_der_modulu/2,-(D02_velikost_modulu_y+2)*rotec_der_modulu/2,-0.01]) 
    translate([0,0,-0.01]) 
        {
        cylinder (h = D07_vyska+0.12, r= (prumer_sroubu+0.2)/2, $fn=40);
    
        cylinder (h = vyska_matky, r= (sirka_matky+0.2)/2, $fn=6);
      
        }

//otvor na sroub 4
translate([(D02_velikost_modulu_x-1)*rotec_der_modulu/2,-(D02_velikost_modulu_y+2)*rotec_der_modulu/2,-0.01]) 
    translate([0,0,-0.01]) 
        {
        cylinder (h = D07_vyska+0.12, r= (prumer_sroubu+0.2)/2, $fn=40);
    
        cylinder (h = vyska_matky, r= (sirka_matky+0.2)/2, $fn=6);
      
        }
 
//Otvor na uchytny sroub 1
translate([0,(D02_velikost_modulu_y+2)*rotec_der_modulu/2,0]) 
    translate([0,0,-0.01]) 
        {
        cylinder (h = D07_vyska+0.12, r= (prumer_sroubu+0.2)/2, $fn=40);
         cylinder (h = vyska_hlavy_sroubu, r= (prumer_hlavy_sroubu+0.2)/2, $fn=40);
                      
        }

//Otvor na uchytny sroub 2
translate([0,-(D02_velikost_modulu_y+2)*rotec_der_modulu/2,-0.01]) 
    translate([0,0,-0.01]) 
        {
        cylinder (h = D07_vyska+0.12, r= (prumer_sroubu+0.2)/2, $fn=40);
   cylinder (h = vyska_hlavy_sroubu, r= (prumer_hlavy_sroubu+0.2)/2, $fn=40);
        }      
        
 
} 
}           
         

module SIPMBOX01C_D05() //drzak krystalu
{
  difference (){
      union() {
 //Zakladna
 translate([-(velikost_modulu_x * rotec_der_modulu)/2+2+1/2,-(velikost_modulu_y * rotec_der_modulu)/2+2+1/2,0])
 
 minkowski()
{
  cube([velikost_modulu_x * rotec_der_modulu-2*2-1,velikost_modulu_y * rotec_der_modulu-2*2-1,sila_materialu_zakladny]);
  cylinder(r=2,h=0.1);
}


//drzak krystalu
 translate([-(zakladna_krystalu_x+4*sila_steny)/2+2,-(zakladna_krystalu_y+4*sila_steny)/2+2,0])
 
 minkowski()
{
  cube([zakladna_krystalu_x-2*2+4*sila_steny,zakladna_krystalu_y-2*2+4*sila_steny,vyska_drzaku_krystalu+1.5]);
  cylinder(r=2,h=0.1);
}
}

//otvor pro dilec 01D
 translate([-(zakladna_krystalu_x+2*sila_steny+1.5)/2+2,-(zakladna_krystalu_y+2*sila_steny+1.5)/2+2,0])
 
 minkowski()
{
  cube([zakladna_krystalu_x-2*2+2*sila_steny+1.5,zakladna_krystalu_y-2*2+2*sila_steny+1.5,vyska_drzaku_krystalu]);
  cylinder(r=2,h=0.1);
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
} 



module SIPMBOX01C_D03() //vrchní kryt
{
  difference (){
      union() {
 //Zakladna
 translate([-(velikost_modulu_x * rotec_der_modulu+2*sila_materialu_zakladny)/2+2,-(velikost_modulu_y * rotec_der_modulu+2*sila_materialu_zakladny)/2+2,0])
 
 minkowski()
{
  cube([velikost_modulu_x * rotec_der_modulu-2*2+2*sila_materialu_zakladny,velikost_modulu_y * rotec_der_modulu-2*2+2*sila_materialu_zakladny,sila_materialu_zakladny+vyska_krystalu+rezerva_nad_krystalem]);
  cylinder(r=2,h=0.1);
}


}

//odstranění vnitřního prostoru ve tvaru krychle
 translate([-(velikost_modulu_x * rotec_der_modulu)/2,-(velikost_modulu_y * rotec_der_modulu)/2,sila_materialu_zakladny])
cube([velikost_modulu_x * rotec_der_modulu,velikost_modulu_y * rotec_der_modulu,sila_materialu_zakladny+vyska_krystalu+rezerva_nad_krystalem]);


 
} 
} 

module SIPMBOX01C_D02() //kryt ze spoda
{
  difference (){
      union() {
 //Zakladna
 translate([-(D02_velikost_modulu_x * rotec_der_modulu+2*sila_materialu_zakladny)/2+2,-(D02_velikost_modulu_y * rotec_der_modulu+2*sila_materialu_zakladny)/2+2,0])
 
 minkowski()
{
  cube([D02_velikost_modulu_x * rotec_der_modulu-2*2+2*sila_materialu_zakladny,D02_velikost_modulu_y * rotec_der_modulu-2*2+2*sila_materialu_zakladny,sila_materialu_zakladny+D02_vyska_bocniho_prekryvu]);
  cylinder(r=2,h=0.1);
}



}

 translate([-(D02_velikost_modulu_x * rotec_der_modulu)/2-1/2,-(D02_velikost_modulu_y * rotec_der_modulu)/2-1/2,sila_materialu_zakladny/3*2])
#cube([D02_velikost_modulu_x * rotec_der_modulu+1,D02_velikost_modulu_y * rotec_der_modulu+1,sila_materialu_zakladny+D02_vyska_bocniho_prekryvu]);
for(i=[0:2:12]) 
  translate([0,i-12/2,sila_materialu_zakladny+D02_vyska_bocniho_prekryvu]) rotate([90,0,90]) cylinder(r=0.7,h=20);

} 
} 
 
 module SIPMBOX01C_D01() //drzak krystalu
{
  difference (){
      union() {
 //Zakladna
 translate([-(velikost_modulu_x * rotec_der_modulu)/2+2+1/2,-(velikost_modulu_y * rotec_der_modulu)/2+2+1/2,0])
 
 minkowski()
{
  cube([velikost_modulu_x * rotec_der_modulu-2*2-1,velikost_modulu_y * rotec_der_modulu-2*2-1,sila_materialu_zakladny]);
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
 
 //translate([-(zakladna_krystalu_x)/2,-(zakladna_krystalu_y)/2,-sila_steny])
 translate([0,0,-2])
 cylinder (h = vyska_drzaku_krystalu+0.12, r= zakladna_krystalu_x/2, $fn=60);
//#cube([zakladna_krystalu_x,zakladna_krystalu_y,vyska_drzaku_krystalu+0.12]);
} 
} 

module SIPMBOX01C_D06() //drzak krystalu
{
  difference (){
      union() {
 //Zakladna
 translate([-(velikost_modulu_x * rotec_der_modulu)/2+2+1/2,-(velikost_modulu_y * rotec_der_modulu)/2+2+1/2,0])
 
 minkowski()
{
  cube([velikost_modulu_x * rotec_der_modulu-2*2-1,velikost_modulu_y * rotec_der_modulu-2*2-1,sila_materialu_zakladny]);
  cylinder(r=2,h=0.1);
}


//drzak krystalu
 translate([-(zakladna_krystalu_x+2*sila_steny)/2+2,-(zakladna_krystalu_y+2*sila_steny)/2+2,0])
 
 minkowski()
{
  cube([zakladna_krystalu_x-2*2+2*sila_steny,zakladna_krystalu_y-2*2+2*sila_steny,4]);
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
 
 translate([0,0,-2])
 cylinder (h = vyska_drzaku_krystalu+0.12, r= zakladna_krystalu_x/2, $fn=60);

// translate([-(zakladna_krystalu_x)/2,-(zakladna_krystalu_y)/2,-sila_steny])
// cube([zakladna_krystalu_x,zakladna_krystalu_y,vyska_drzaku_krystalu+0.12]);
} 
}  

