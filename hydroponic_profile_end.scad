height = 45.5; //45 + 2 tolerances for normal fit
min_width = 70.5; //70
max_width = 81.5; //81
lid_depth = 20;

include <BOSL2/std.scad>

difference() {
  linear_extrude(lid_depth) scale([1.05, 1.1]){
    rect([min_width, height]);
    arc(points=[[min_width/2, -height/2], [max_width/2, 0], [min_width/2, height/2]], wedge=true, $fn=50);
    arc(points=[[-min_width/2, -height/2], [-max_width/2, 0], [-min_width/2, height/2]], wedge=true, $fn=50);
  };

  translate([0,0,1]) linear_extrude(lid_depth) {
    rect([min_width, height]);
    arc(points=[[min_width/2, -height/2], [max_width/2, 0], [min_width/2, height/2]], wedge=true, $fn=50);
    arc(points=[[-min_width/2, -height/2], [-max_width/2, 0], [-min_width/2, height/2]], wedge=true, $fn=50);
  };
}
