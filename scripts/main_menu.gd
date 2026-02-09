extends CenterContainer



func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://level_1.tscn")


func _on_quit_button_pressed() -> void:
	get_tree().quit()


func _on_settings_button_pressed() -> void:
	pass 
