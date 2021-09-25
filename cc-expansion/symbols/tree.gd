extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

# Called when the symbol is first initialized.
func init(modloader: Reference, params):
    # Set this symbol's reference to the modloader. Always include this line.
    self.modloader = modloader
    
    self.id = "tree"
    self.value = 4
    self.values = [5]
    self.rarity = "rare"
    self.groups = ["plant", "farmerlikes", "spawner0"]
    self.sfx = ["bee"]
    
    self.texture = load_texture("res://cc-expansion/symbols/tree.png")
    self.name = "Tree"
    self.description = "Has a <color_E14A68>5%<end> chance of adding <icon_leaves>. When adjacent to <icon_gardener>, adds <icon_leaves>. Part of the <color_92F4EC>CC Expansion<end> mod."

func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().if_value_random(0).add_symbol_type("leaves").animate("shake"))
    for i in adjacent:
        if adjacent.id == "gardener":
            symbol.add_effect(effect().add_symbol_type("leaves").animate("shake"))