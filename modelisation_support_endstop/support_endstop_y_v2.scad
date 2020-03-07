/* Support endstop pour Électrofraise (Y : axe horizontal le plus long)
   Quimper, la baleine, 6 mars 2020 / pierre<at>lesporteslogiques.net
   openscad version version 2019.05 @ kirin / debian 9.5 stretch 
*/

// plaque pour fixer le endstop
difference() {
    union() {
        cube(size=[16, 40, 2], center=false);
        translate([16, 9, 0]) cube(size=[14, 20, 2], center=false);
    }
    union() {
        translate([2.75, 37, -0.1]) cylinder( h=2.2, r=1.5, center=false, $fn=36);
        translate([2.75, 22, -0.1]) cylinder( h=2.2, r=1.5, center=false, $fn=36);
        translate([2.75, 3, -0.1]) cylinder( h=2.2, r=1.5, center=false, $fn=36);
        translate([13.25, 37, -0.1]) cylinder( h=2.2, r=1.5, center=false, $fn=36);
    }
}

// plaque de fixation à la fraiseuse
translate([28.5, 9, 20]) rotate(a=[0, 90, 0]) difference() {
    cube(size=[20, 20, 2], center=false);
    union() {
        translate([5, 5, -0.1]) cylinder( h=2.2, r=2, center=false, $fn=36);   
        translate([13, 15, -0.1]) cylinder( h=2.2, r=2, center=false, $fn=36);     
    }
}

// renfort
translate([24.1, 19, 2]) rotate([90, 0, 0]) linear_extrude(height=10) polygon(points = [ [0, 0], [5, 0], [5, 5] ]);