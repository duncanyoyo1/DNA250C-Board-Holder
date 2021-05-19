include <BOSL/constants.scad>
use <BOSL/masks.scad>
use <BOSL/transforms.scad>

$fa = 0.1; // Set these to 1 for faster preview.
$fs = 0.1; // ----------------------------------

module mainbody(){
difference(){
cube([20,69,2.9], center=true);
translate([10,34.5,-2])
fillet_mask(l=100, r=2.5, orient=ORIENT_Z, align=V_UP);
translate([-10,34.5,-2])
fillet_mask(l=100, r=2.5, orient=ORIENT_Z, align=V_UP);
translate([-10,-34.5,-2])
fillet_mask(l=100, r=2.5, orient=ORIENT_Z, align=V_UP);
translate([10,-34.5,-2])
fillet_mask(l=100, r=2.5, orient=ORIENT_Z, align=V_UP);
translate([0,27.5,0])
cylinder(h=5, d=11, center=true);
translate([7.5,29,0.5])
cylinder(h=5, d=1.75, center=true);
translate([7.5,29,0.5])
cylinder(h=2, d=3.5, center=true);
translate([-7.5,29,0.5])
cylinder(h=2, d=3.5, center=true);
translate([-7.5,29,-1])
cylinder(h=6, d=1.75, center=true);
translate([7.5,-25,0.5])
cylinder(h=2, d=3.5, center=true);
translate([7.5,-25,-1])
cylinder(h=6, d=1.75, center=true);
translate([0,-12,0])
cylinder(h=5, d=5.8, center=true);
translate([0,-18.5,0])
cylinder(h=5, d=5.8, center=true);
translate([0,-25,0])
cylinder(h=5, d=5.8, center=true);
translate([0,-20,-2])
cube([8.8,24,2.25], center=true);
translate([0,17.5,0])
cube([12,7.85,5], center=true);
translate([0,16.75,0])
cube([15.85,6.5,5], center=true);
translate([0,6.15,1])
cube([15.85,27.5,3.25], center=true);
translate([0,-30.25,0])
cube([8.8,3.55,5], center=true);
};
};

module standoffs(){
translate([7.5,29,-2.25])
cylinder(h=2, d=4.75, center=true);
translate([-7.5,29,-2.25])
cylinder(h=2, d=4.75, center=true);
translate([7.5,-25,-2.25])
cylinder(h=2, d=4.75, center=true);
};

difference(){
standoffs();
translate([0,27.5,0])
cylinder(h=10, d=11, center=true);
translate([7.5,29,-1])
cylinder(h=6, d=1.75, center=true);
translate([-7.5,29,-1])
cylinder(h=6, d=1.75, center=true);
translate([7.5,-25,-1])
cylinder(h=6, d=1.75, center=true);
}
mainbody();