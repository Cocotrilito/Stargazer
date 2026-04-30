extends Node2D

func _ready():
	$CanvasLayer/ColorRect.modulate.a = 0.0
func fade_and_change():
	var tween = create_tween()
	tween.tween_property($CanvasLayer/ColorRect,"modulate:a", 10.0, 1.5)
	await tween.finished
	get_tree().change_scene_to_file("res://Scenes/galileo.tscn")
