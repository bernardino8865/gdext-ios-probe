extends Node


func _ready() -> void:
	# Em iPhone real isto diria se a extensao nativa carregou; no CI so confirma que o projeto exporta.
	print("GDEXT_PROBE classe nativa presente: ", ClassDB.class_exists("MyTestMain") or ClassDB.class_exists("GDExample"))
