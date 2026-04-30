extends Node2D

func _ready():
	$CanvasLayer/Label.modulate.a = 0.0
	var tween = create_tween()
	tween.tween_property($CanvasLayer/Label, "modulate:a", 1.0, 3.0)
