//
// ktKILLIFISH7
//

gap1 = 0.001;
gap2 = 0.002;
th = 2;
thb = 1;

PR = 13;
PRB = PR+th*2;
PH = 40;
AN = 30;
L1 = 10;
MH = 30;
FA = 0;
FH = 60/2;

//poppy();
//poppy_s();
//fountain();
lily();

module poppy()
{
difference()
{   
    union()
    {
        color("blue") translate([0, 0, PRB/2]) rotate([0, 90, 0]) cylinder(r=PRB/2, h=20, $fn=100);
        translate([0, 0, 0]) rotate([90, -90, 0]) rotate_extrude(angle=AN, convexity=10, $fn=100) translate([PRB/2, 0, 0]) circle(PRB/2);
        rotate([0, -90-AN, 0]) translate([PRB/2, 0, 0]) cylinder(r=PRB/2, h=PH, $fn=100);
        
        translate([-58, 0, -19]) sphere(r=50/2, $fn=200);
    }
    translate([0, 0, PRB/2]) rotate([0, 90, 0]) cylinder(r1=PR/2, r2=PR/2+0.5, h=20+gap2, $fn=100);
    translate([0, 0, 0]) rotate([90, -90, 0]) rotate_extrude(angle=AN+1, convexity=10, $fn=100) translate([PR/2+th, 0, 0]) circle(PR/2);
    rotate([0, -90-AN, 0]) translate([PRB/2, 0, 0]) cylinder(r=PR/2, h=PH+gap2, $fn=100);
    
    translate([-58, 0, -19]) sphere(r=50/2-th, $fn=200);
    translate([-85, -50/2, -16]) rotate([0, -25, 0]) cube([50, 50, 50]);
}
}



module poppy_s()
{
difference()
{   
    union()
    {
        color("blue") translate([0, 0, PRB/2]) rotate([0, 90, 0]) cylinder(r=PRB/2, h=20, $fn=100);
        translate([0, 0, 0]) rotate([90, -90, 0]) rotate_extrude(angle=AN, convexity=10, $fn=100) translate([PRB/2, 0, 0]) circle(PRB/2);
        rotate([0, -90-AN, 0]) translate([PRB/2, 0, 0]) cylinder(r=PRB/2, h=12, $fn=100);
        
        translate([-38, 0, 5]) sphere(r=60/2, $fn=200);
    }
    translate([0, 0, PRB/2]) rotate([0, 90, 0]) cylinder(r1=PR/2, r2=PR/2+0.5, h=20+gap2, $fn=100);
    translate([0, 0, 0]) rotate([90, -90, 0]) rotate_extrude(angle=AN+1, convexity=10, $fn=100) translate([PR/2+th, 0, 0]) circle(PR/2);
    rotate([0, -90-AN, 0]) translate([PRB/2, 0, 0]) cylinder(r=PR/2, h=12+gap2, $fn=100);
    
    translate([-38, 0, 5]) sphere(r=60/2-th, $fn=200);
    translate([-100, -100/2, -4]) rotate([0, -20, 0]) cube([100, 100, 100]);
}
#translate([-10, -2/2, -5]) cube([12, 2, 21]);
}



module fountain()
{
difference()
{   
    union()
    {
        color("blue") translate([0, 0, PRB/2]) rotate([0, 90, 0]) cylinder(r=PRB/2, h=20, $fn=100);
        rotate([0, -90-FA, 0]) translate([PRB/2, 0, 0]) cylinder(r=PRB/2, h=FH, $fn=100);
        
        translate([-60/2, 0, 60/2]) sphere(r=60/2, $fn=200);
    }
    translate([0, 0, PRB/2]) rotate([0, 90, 0]) cylinder(r1=PR/2, r2=PR/2+0.5, h=20+gap2, $fn=100);
    rotate([0, -90-FA, 0]) translate([PRB/2, 0, 0]) cylinder(r=PR/2, h=FH+gap2, $fn=100);
    
    translate([-60/2, 0, 60/2]) sphere(r=60/2-th, $fn=200);
    translate([-100, -100/2, 40]) rotate([0, 0, 0]) cube([100, 100, 100]);
}
}



module lily()
{
difference()
{   
    union()
    {
        color("blue") translate([0, 0, PRB/2]) rotate([0, 90, 0]) cylinder(r=PRB/2, h=20, $fn=100);
        rotate([0, -90-FA, 0]) translate([PRB/2, 0, 0]) cylinder(r=PRB/2, h=FH, $fn=100);
        
        translate([-55, 0, PRB/2]) scale([1.8, 1, 1]) sphere(r=60/2, $fn=100);
    }
    translate([0, 0, PRB/2]) rotate([0, 90, 0]) cylinder(r1=PR/2, r2=PR/2+0.5, h=20+gap2, $fn=100);
    rotate([0, -90-FA, 0]) translate([PRB/2, 0, 0]) cylinder(r=PR/2, h=FH+gap2, $fn=100);
    
    translate([-55, 0, PRB/2]) scale([1.8, 1, 1]) sphere(r=60/2-th, $fn=100);
    translate([-80, -100/2, -30]) rotate([0, -60, 0]) cube([100, 100, 100]);
}
}


