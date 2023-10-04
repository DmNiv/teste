extends LineEdit




func _ready():
	grab_focus()

func _process(delta):
	if Input.is_action_just_pressed("ui_enter"):
		print(text)
		clear()
