extends Node2D

func _ready():
	$Fire.fireON.connect(_on_FireON)
	$CanvasLayer/ColorRect.modulate.a = 0.0
func _on_FireON():
	$Ground/ColorRect.color = Color(0.8, 0.3, 0.0)
	fande_and_change()
func fande_and_change():
	var tween = create_tween()
	tween.tween_property($CanvasLayer/ColorRect,"modulate:a", 10.0, 1.5)
	
	await tween.finished
	get_tree().change_scene_to_file("res://Scenes/egypt.tscn")
