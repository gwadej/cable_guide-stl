module mount_tip() {
    height=10.1;
    intersection() {
        import_stl("cable_guide_x_stage_anchor.stl", convexity = 5);
        translate([0,0,height/2]) cube([20,20,height], center=true);
    }
}

module mount_mid() {
    height=7;
    offset=13+height/2;
    translate([0,0,-3]) intersection() {
        import_stl("cable_guide_x_stage_anchor.stl", convexity = 5);
        translate([0,0,offset]) cube([20,20,height], center=true);
    }
}

module pivot() {
    translate([5,0,0]) rotate([0,0,90]) intersection() {
        import_stl("cable_guide_x_stage_anchor.stl", convexity = 5);
        translate([0,5,31]) cube([20,12,22], center=true);
    }
}

module slice() {
    translate([5,0,0]) rotate([0,0,90]) intersection() {
        translate([0,0,-19.5]) import_stl("cable_guide_x_stage_anchor.stl", convexity = 5);
        translate([0,5,0.5]) cube([20,12,1], center=true);
    }
}

union() {
    mount_tip();
    mount_mid();
    translate([0,0,16.9]) scale([1,1,3]) slice();
    translate([0,0,-0.2]) pivot();
}
