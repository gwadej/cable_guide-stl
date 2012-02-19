angle=60;
channel=25.4/2;
//import_stl("cable_guide_link.stl", convexity = 5);

module male_link() {
    side=22;
    intersection() {
        translate([-2,0,0]) import_stl("cable_guide_link.stl", convexity = 5);
        translate([0,-side/2,0]) cube([0.75*side,side,0.75*side]);
    }
}

module female_link() {
    side=22;
    intersection() {
        translate([-2,0,0]) import_stl("cable_guide_link.stl", convexity = 5);
        translate([-side,-side/2,0]) cube([side,side,side]);
    }
}

module standoff() {
    intersection() {
        translate([-2,0,0]) import_stl("cable_guide_link.stl", convexity = 5);
        translate([0,-10,0]) cube([1,20,15]);
    }
}

module bottom() {
    width=channel+1;
    translate([0,-width/2,0]) cube([1,width,2]);
}

union() {
    female_link();
    difference() {
        translate([20*cos(angle),20*sin(angle),0]) rotate([0,0,-angle]) union() {
            female_link();
            scale([20,1,1]) standoff();
            translate([5,0,0]) scale([15,1,1]) bottom();
        }
        translate([5,-channel/2,2]) cube([25,channel,15]);
    }
    translate([30,0,0]) male_link();
    difference() {
        scale([30,1,1]) standoff();
        translate([20*cos(angle),20*sin(angle),0]) rotate([0,0,-angle]) translate([5,-channel/2,2]) cube([15,channel,15]);
    }
    translate([5,0,0]) scale([25,1,1]) bottom();
}
