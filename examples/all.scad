use <../leds.scad>;

$fn = 200;

led_3mm();
translate([7.5, 0, 0]) led_5mm();
translate([20, 0, 0]) led_10mm();
