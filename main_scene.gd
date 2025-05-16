extends Node3D

var bodyMat:MyMasterBodyMat= preload("res://Mesh/Materials/BodyMat.tres")
const cumGradient = preload("res://Mesh/Materials/CumGradient.tres")

func _on_cum_slider_value_changed(value: float) -> void:
	var cumColor:Color = Color.WHITE
	cumColor.a = value
	bodyMat.set_shader_parameter("cum_color", cumColor)

func _on_cum_slider_2_value_changed(value: float) -> void:
	cumGradient.set_offset(0, 1.0-value)
