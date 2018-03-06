
module base()
{
    union()
    {
        difference()
        {
            translate([0, 0, 2.7/2]) cube([4.7, 4.7, 2.7], center=true);
            translate([0, 0, 2.2/2]) cube([3.6, 3.6, 2.2], center=true);
        }
        translate([-2.05, -2.05, -1.5]) cylinder(h=1.5, d=0.6, $fn=18);
        translate([2.05, 2.05, -1.5]) cylinder(h=1.5, d=0.6, $fn=18);
    }
}

module pipe(height, round_face)
{
    if(round_face)
    {
        union()
        {
            cylinder(h=height-1.5, d=3, $fn=18);
            translate([0, 0, height-1.5]) sphere(r=1.5, $fn=18);
        }
    }
    else
    {
        cylinder(h=height, d=3, $fn=18);
    }
};

module VLP_250_R()
{
    base();
    translate([0, 0, 2.7]) pipe(3.7, true);
}

VLP_250_R();