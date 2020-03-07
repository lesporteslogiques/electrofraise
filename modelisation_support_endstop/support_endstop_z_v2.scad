/* Support endstop pour Électrofraise (axe Z)
   Quimper, la baleine, 6 mars 2020 / pierre<at>lesporteslogiques.net
   openscad version version 2019.05 @ kirin / debian 9.5 stretch 
*/

// plaque pour fixer le endstop
difference() {
    linear_extrude(height=3) polygon(points = [ [0, 0], [40, 0], [40, 20], [16, 20], [16, 40], [0, 40] ]);
    union() {
        translate([2.75, 37, -0.1]) cylinder( h=4, r=1.5, center=false, $fn=36);
        translate([2.75, 22, -0.1]) cylinder( h=4, r=1.5, center=false, $fn=36);
        translate([2.75, 3, -0.1]) cylinder( h=4, r=1.5, center=false, $fn=36);
        translate([13.25, 37, -0.1]) cylinder( h=4, r=1.5, center=false, $fn=36);
    }
}

// plaque de fixation à la fraiseuse
translate([40, 0, 3]) rotate(a=[0, 90, 0]) difference() {
    union() {
        cube(size=[15, 20, 3], center=false);
    }
    
    union() {
        translate([10, 4, -0.1]) cylinder( h=3.2, r=2, center=false, $fn=36);   
        translate([10, 16, -0.1]) cylinder( h=3.2, r=2, center=false, $fn=36);     
    }
}

// Renforts
translate([35.1, 7, 0]) rotate([270, 0, 0]) linear_extrude(height=6) polygon(points = [ [0, 0], [5, 0], [5, 5] ]);
translate([37.1, 0, 0]) rotate([270, 0, 0]) linear_extrude(height=20) polygon(points = [ [0, 0], [3, 0], [3, 3] ]);