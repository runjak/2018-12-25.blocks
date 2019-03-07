unit = 10;

module roundCube(dimensions, margin=1) {
  cubeDimensions = [for(d = dimensions) d - 2*margin];
  translate([margin, margin, margin])
  minkowski() {
    cube(cubeDimensions);
    sphere(r=margin, center=true);
  }
}

module lid(unit, margin=1) {
  u = 5 * unit;
  um = u + margin;

  linear_extrude(height=margin, center=true, scale=u/um)
  square(size=[um, um], center=true);
}

module puzzleBox(unit, margin=1) {
  u = 5 * unit + margin;
  2m = 2 * margin;
  hm = -margin / 2;

  translate([hm, hm, 0]) {
    color([0, 1, 0]) {
      difference() {
        // Outer cube
        translate([-margin, -margin, -margin])
        roundCube([u+2m, u+2m, u+2.5*margin]);

        // Clearing the cube
        translate([0, 0, 2m])
        roundCube([u, u, u]);
        translate([0, 0, 0])
        roundCube([u, u, u]);

        // Clearing the lid
        for(x=[0, 2.5*unit + 1])
        translate([x, 2.5*unit + 1, u+margin])
        lid(unit, 3.5);
      }
    }
  }
}
