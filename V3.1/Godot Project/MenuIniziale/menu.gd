extends Control

'''
func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		toggle()
		
func toggle():
	visible = !visible
	get_tree().paused = visible
'''
func _on_resume_pressed(): # PLAY
	get_tree().change_scene_to_file("res://level.tscn")


func _on_settings_pressed(): # PLAY
	get_tree().change_scene_to_file("uid://d8sio64hwj26") #Selezione Impostazioni


func _on_quit_pressed(): # QUIT
	# await get_tree().create_timer(3.0).timeout
	get_tree().quit()
