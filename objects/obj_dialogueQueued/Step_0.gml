//When this dialogue is next in line recreate it as a obj_dialogue
if(ticket == 0){
	instance_create_layer(x, y, "Instances", obj_dialogue, {
		text:text, 
		responses:responses, 
		originInstance: originInstance,
        responseScript: responseScript
	});
	instance_destroy();
}