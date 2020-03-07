/* Support endstop pour Électrofraise (X : axe horizontal le plus court)
   Quimper, la baleine, 6 mars 2020 / pierre<at>lesporteslogiques.net
   openscad version version 2019.05 @ kirin / debian 9.5 stretch é
*/

// plaque pour fixer le endstop
difference() {
    linear_extrude(height=2) polygon(points = [ [0, 0], [30, 0], [30, 20], [16, 20], [16, 40], [0, 40] ]);
    union() {
        translate([2.75, 37, -0.1]) cylinder( h=3, r=1.5, center=false, $fn=36);
        translate([2.75, 22, -0.1]) cylinder( h=3, r=1.5, center=false, $fn=36);
        translate([2.75, 3, -0.1]) cylinder( h=3, r=1.5, center=false, $fn=36);
        translate([13.25, 37, -0.1]) cylinder( h=3, r=1.5, center=false, $fn=36);
    }
}

// plaque de fixation à la fraiseuse
translate([28, 0, 1.5]) rotate(a=[0, 90, 0]) difference() {
    union() {
        cube(size=[20.5, 20, 2], center=false);
    }
    
    union() {
        translate([5, 5, -0.1]) cylinder( h=2.2, r=2.5, center=false, $fn=36);   
        translate([15, 15, -0.1]) cylinder( h=2.2, r=2.5, center=false, $fn=36);     
    }
}

// Renfort
translate([26.1, 10, 0]) rotate([270, 0, 0]) linear_extrude(height=10) polygon(points = [ [0, 0], [3, 0], [3, 3] ]);