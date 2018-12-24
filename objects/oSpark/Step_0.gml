hspeed = ApproachOver(hspeed, 0, 0.1);
vspeed = ApproachOver(vspeed, 0, 0.1);

image_xscale -= 0.025;
image_yscale -= 0.025;

image_alpha -= 0.025;

if (image_alpha <= 0)
    instance_destroy();
    
x += hspeed;
y += vspeed;

