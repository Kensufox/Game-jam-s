extends Node

func reload_node(node_path: String, scene_path: String):
	var parent = get_node(node_path).get_parent()
	get_node(node_path).queue_free()

	var new_scene = load(scene_path).instantiate()
	parent.add_child(new_scene)
