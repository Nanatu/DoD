if(image_index > image_number - 1)
		{
			image_speed = 0;
		}

image_alpha-=0.005;//change this to affect the fading speed
    if image_alpha<0 instance_destroy();
	
	scr_Enemy_CollisionAndMovement();