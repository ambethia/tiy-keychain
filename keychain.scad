$fn=100;

difference() {
    scale([0.24,0.24,1]) {
        difference() {
            linear_extrude(height = 2) {
                import("./shield.dxf");        
            }
            translate([0, 0, 1.25]) {
                linear_extrude(height = 2) {
                    offset(r = -8) {
                        import("./shield.dxf");
                    }
                }
            }
        }
        translate([39, 40, 0]) {
            linear_extrude(height = 2) {
                import("./text.dxf");
            }
        }
    }
    translate([25, 40, 0]) {
        cylinder(5, 1, 1, center=true);
    }
}
