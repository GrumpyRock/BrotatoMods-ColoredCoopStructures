extends "res://entities/structures/structure.gd"

func update_highlighting() -> void :
	var value = ProgressData.settings.character_highlighting
	if RunData.is_coop_run:
		var highlight_color = CoopService.get_player_color(player_index)
		outline_material.set_shader_param("outline_color_0", highlight_color)
		outline_material.set_shader_param("texture_size", sprite.texture.get_size())
		sprite.material = outline_material.duplicate()

func _ready():
	._ready()
	update_highlighting()

