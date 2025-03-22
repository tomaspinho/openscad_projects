w = 335;
d = 14;

include <BOSL2/std.scad>
include <BOSL2/joiners.scad>


difference(){
diff()
cylinder(w/2, d=d){
    attach(TOP, BOTTOM, overlap=1)hirth(8,id=d-4,od=d,tooth_angle=90,rounding=.1);
    attach(BOTTOM, BOTTOM, overlap=1)hirth(8,id=d-4,od=d,tooth_angle=90,rounding=.1);
};
translate([7,0,0]) cuboid([2, 2, w+20]);
}


