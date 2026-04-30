extends Node2D


func _ready():
	$Fire.fireON.connect(_on_FireON)
	$CanvasLayer/ColorRect.modulate.a = 0.
	$Lightning.visible = false
	await get_tree().create_timer(5.0).timeout
	$Lightning.visible = true
	await get_tree().create_timer(0.3).timeout
	$Lightning.visible = false
	$Fire.visible = true
func _on_FireON():
	$Ground/ColorRect.color = Color(0.8, 0.3, 0.0)
	fade_and_change()
func fade_and_change():
	var tween = create_tween()
	tween.tween_property($CanvasLayer/ColorRect,"modulate:a", 10.0, 1.5)
	
	await tween.finished
	get_tree().change_scene_to_file("res://Scenes/egypt.tscn")
