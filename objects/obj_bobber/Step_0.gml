/* 
calculate landed


if landed:
	check surface youre on
	
	if landed on land:
		stay there dont do anything.
	
	else if landed on water:
	
		///IMPORTANT -- ADD COOLDOWN BETWEEN EACH CHECK ATTEMPT
		do randomized check for catching fish.
		if (random(1 - 100) == random(1 - 100)) then fish caught!
			grab the fish type from the water object and pass it onto the player object
			destroy(self)
		else
			water bobbing animation
		
		
else:
	Continue to move but reduce velocity
	
	
*/
