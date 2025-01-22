extends Node


const GRUMPYROCK_COLOREDCOOPSTRUCTURES_DIR := "GrumpyRock-ColoredCoopStructures"
const GRUMPYROCK_COLOREDCOOPSTRUCTURES_LOG_NAME := "GrumpyRock-ColoredCoopStructures:Main"

var mod_dir_path := ""
var extensions_dir_path := ""
var translations_dir_path := ""

# Before v6.1.0
# func _init(modLoader = ModLoader) -> void:
func _init() -> void:
	mod_dir_path = ModLoaderMod.get_unpacked_dir().plus_file(GRUMPYROCK_COLOREDCOOPSTRUCTURES_DIR)
	# Add extensions
	install_script_extensions()
	# Add translations
	add_translations()


func install_script_extensions() -> void:
	extensions_dir_path = mod_dir_path.plus_file("extensions")
	# extensions_dir_path = mod_dir_path.path_join("extensions") # Godot 4

	ModLoaderMod.install_script_extension(extensions_dir_path.plus_file("entities/structures/structure.gd"))



func add_translations() -> void:
	translations_dir_path = mod_dir_path.plus_file("translations")
		# ModLoaderMod.add_translation(translations_dir_path.plus_file(...))


func _ready() -> void:
	ModLoaderLog.info("Ready!", GRUMPYROCK_COLOREDCOOPSTRUCTURES_LOG_NAME)
