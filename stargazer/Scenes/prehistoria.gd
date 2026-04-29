extends Node2D

func _ready():
	$Fire.fireON.connect(_on_FireON)

func _on_FireON():
	$Ground/ColorRect.color = Color(0.8, 0.3, 0.0)
	
