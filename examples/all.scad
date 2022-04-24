use <../tht-leds.scad>;

$fn = 200;

tht_led_3mm();
translate([7.5, 0, 0]) tht_led_5mm();
translate([20, 0, 0]) tht_led_10mm();
