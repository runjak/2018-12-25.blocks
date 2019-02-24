include <modules.scad>

puzzleBox(unit, 2);

for(i=[0:4]) {
  translate([6 * unit, i * (unit + 1), 0])
  roundCube([unit, unit, unit]);
}

for(i=[0:5]) {
  translate([i * (2*unit + 1), 6*unit, 0])
  roundCube([2*unit, 3*unit, 2*unit]);
}

for(i=[0:5]) {
  translate([i*(2*unit + 1), 9*unit + 1,0])
  roundCube([2*unit, 4*unit, unit]);
}