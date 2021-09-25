extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "bear"

func patch_description(description):
    return join(description, "<color_E14A68>Destroys<end> adjacent <icon_honeyjar>.")

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("honeyjar").set_destroyed().animate("bounce", "default", [symbol, i]))