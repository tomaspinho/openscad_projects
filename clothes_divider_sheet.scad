w = 250;
l = 170;
h = 2;

include <BOSL2/std.scad>
include <BOSL2/joiners.scad>
diff()
  cuboid([w,l,h]){
    attach(BACK) xcopies(50, 4) dovetail("male", slide=h, width=15, height=8, angle=30);
    tag("remove")attach(FRONT) xcopies(50, 4) dovetail("female", slide=h, width=15, height=8, angle=30);
  }

