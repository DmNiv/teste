extends LineEdit

var valorInserido

func mandaTexto(texto: String,label: Node):
	label.recebeTexto(texto)

func _ready():
	grab_focus()

func _process(delta):
	if Input.is_action_just_pressed("ui_enter"):
		valorInserido = text
		mandaTexto(valorInserido, get_parent().get_node("Label"))
		clear()
