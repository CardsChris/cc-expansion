extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "billionaire"

func patch_description(description):
    return join(description, "Adjacent <icon_politician> get a permanent <color_E14A68>1<icon_coin><end> bonus.")

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("politician").add_permanent_bonus(1))