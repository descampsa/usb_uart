
module pad(width, height, length, hole_radius)
{
    difference()
    {
        translate([0, length/2, height/2]) cube([width, length, height], center=true);
        translate([0, length, 0]) cylinder(h=height, r=hole_radius, $fn=18);
    }
}

module body(width, height, length)
{
      translate([0, 0, height/2])cube([width, length, height], center=true);  
}

module fuse_1206()
{
    A=3.5;
    B=1.8;
    C=0.85;
    D=0.75;
    E=0.45;
    body_length = A-2*D;
    union()
    {
        translate([0, body_length/2, 0]) color("gray") pad(B, C, D, E);
        translate([0, -body_length/2, 0]) mirror([0, 1 , 0]) color("gray") pad(B, C, D, E);
        color("green") body(B, C, body_length);
    }
}

fuse_1206();