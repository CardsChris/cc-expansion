extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "rain"

func patch_description(description):
    return join(description, "Adjacent <icon_tree> give 2x more <icon_coin>, and add <icon_seed>.")

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("tree").add_symbol_type("seed").animate("bounce", "default", [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_type("tree").change_value_multiplier(2))