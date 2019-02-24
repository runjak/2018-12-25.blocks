include <modules.scad>

module thrice(translations, dimensions, unit) {
  ts = [for(t=translations) t * unit];
  ds = [for(d=dimensions) d * unit];

  translate(ts)
  roundCube(ds);

  translate([ts[2], ts[0], ts[1]])
  roundCube([ds[2], ds[0], ds[1]]);

  translate([ts[1], ts[2], ts[0]])
  roundCube([ds[1], ds[2], ds[0]]);
}

module puzzle(unit) {
  for(i=[0:4]) {
    translate([i*unit, i*unit, i*unit])
    roundCube([unit, unit, unit]);
  }

  color([0, 0, 1]) {
    thrice([1,0,0], [4,2,1], unit);
    thrice([3,4,0], [2,1,4], unit);
  }

  color([1, 0, 0]) {
    thrice([2,0,1], [3,2,2], unit);
    thrice([3,2,0], [2,2,3], unit);
  }
}

puzzle(unit);
puzzleBox(unit, 2);