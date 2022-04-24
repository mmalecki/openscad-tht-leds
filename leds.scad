use <dome.scad>;

module led_3mm () {
  led(3, 4, 5, raster = 2.54);
}

module led_5mm () {
  led(5, 6, 8.6, raster = 2.54);
}

module led_10mm () {
  led(10, 11, 13.5, raster = 2.54);
}

module led (d, protrusion_d, head_h, raster = 0, protrusion_h = 1, anode_l = 25.4, cathode_l = 24.4, terminal_d = 0.6) {
  cylinder(h = protrusion_h, d = protrusion_d);
  cylinder(h = head_h - (d / 2), d = d);
  translate([0, 0, head_h - (d / 2)]) sphere(r = d / 2);

  if (raster != 0) {
    translate([raster / 2, 0, -anode_l]) cylinder(h = anode_l, d = terminal_d);
    translate([-raster / 2, 0, -cathode_l]) cylinder(h = cathode_l, d = terminal_d);
  }
}
