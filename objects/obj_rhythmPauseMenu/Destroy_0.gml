if (variable_instance_exists(id, "spawnedItems") && is_array(spawnedItems)) {
	for (var i = 0; i < array_length(spawnedItems); i++) {
		if (instance_exists(spawnedItems[i])) {
			instance_destroy(spawnedItems[i]);
		}
	}
}