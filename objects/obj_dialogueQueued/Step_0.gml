if(ticket == 0){
	instance_create_layer(x, y, "Instances", obj_dialogue, {text:text});
	instance_destroy();
}