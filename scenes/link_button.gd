extends LinkButton

@export var scene_to_load: String


func _on_pressed() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/" + scene_to_load + ".tscn")
