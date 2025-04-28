union()
{
    M19();
    translate([0.0, 26.0, 0.0])
    {
        M19();
    }
    translate([0.0, 0.0, 50.0])
    {
        translate([0.0, 13.0, 0.0])
        {
            M23();
        }
    }
    translate([0.0, 0.0, 60.0])
    {
        translate([0.0, 50.0, 0.0])
        {
            M28();
        }
    }
    translate([0.0, 0.0, 60.0])
    {
        translate([0.0, -25.0, 0.0])
        {
            M28();
        }
    }
    translate([0.0, 0.0, 120.0])
    {
        translate([0.0, 13.0, 0.0])
        {
            M32();
        }
    }
}

module M32()
{
    linear_extrude(height = 50.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
    {
        M30();
    }
}

module M19()
{
    linear_extrude(height = 70.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
    {
        M13();
    }
}

module M23()
{
    linear_extrude(height = 70.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
    {
        M21();
    }
}

module M28()
{
    linear_extrude(height = 60.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
    {
        M25();
    }
}

module M21()
{
    scale([25.0, 51.0])
    {
        M8();
    }
}

module M25()
{
    scale([25.0, 20.0])
    {
        M8();
    }
}

module M13()
{
    scale([25.0, 25.0])
    {
        M8();
    }
}

module M30()
{
    scale([50.0, 50.0])
    {
        M8();
    }
}

module M8()
{
    polygon
    (
        points =
        [
            [-0.5, -0.5], 
            [0.5, -0.5], 
            [0.5, 0.5], 
            [-0.5, 0.5]
        ],
        paths =
        [
            [0, 1, 2, 3]
        ]
    );
}
