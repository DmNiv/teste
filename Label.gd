extends Label

var textoRecebido: String

func mostrarTexto():
	visible_ratio = lerp(1, 0, get_node("Timer").time_left / get_node("Timer").wait_time)

func recebeTexto(texto: String):
	textoRecebido = texto
	text = "Olá {nome}, prazer em conhecer!".format({"nome": textoRecebido})
	visible_ratio = 0
	get_node("Timer").start(get_node("Timer").wait_time)
	mostrarTexto()

func _process(delta):
	mostrarTexto()
