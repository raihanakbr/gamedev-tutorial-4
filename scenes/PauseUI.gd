extends Control


func resume():
	get_tree().paused = false
	$".".visible = false


func pause():
	get_tree().paused = true
	$".".visible = true


func _ready() -> void:
	$".".visible = false


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("esc") and !get_tree().paused:
		pause()
	elif Input.is_action_just_pressed("esc") and get_tree().paused:
		resume()


func _on_resume_pressed() -> void:
	resume()


func _on_main_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().call_deferred("change_scene_to_file", "res://scenes/MainUI.tscn")
