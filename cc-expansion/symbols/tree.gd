extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

# Called when the symbol is first initialized.
func init(modloader: Reference, params):
    # Set this symbol's reference to the modloader. Always include this line.
    self.modloader = modloader
    
    self.id = "tree"
    self.value = 4
    self.values = [5]
    self.rarity = "rare"
    self.groups = ["plant", "farmerlikes", "spawner0", "beelikes"]
    self.sfx = ["bee"]
    self.adds.push_back(add().set_quantity(1).set_new_type("leaves").add_condition({"condition": "adjacent", "type": "gardener"}).animate("shake"))
    self.adds.push_back(add().set_new_type("leaves").random(0).animate("shake"))
    self.adds.push_back(add().set_new_group("treefruit").add_condition({"condition": "adjacent", "type": "farmer"}))
    
    self.texture = load_texture("res://cc-expansion/symbols/tree.png")
    self.name = "Tree"
    self.description = .get_description() + " Part of the <color_92F4EC>CC Expansion<end> mod."