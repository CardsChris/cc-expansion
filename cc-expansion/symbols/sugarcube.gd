extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

# Called when the symbol is first initialized.
func init(modloader: Reference, params):
    # Set this symbol's reference to the modloader. Always include this line.
    self.modloader = modloader
    
    self.id = "sugarcube"
    self.value = 1
    self.values = []
    self.rarity = "common"
    self.groups = ["food"]
    self.transforms.push_back(transform().set_target({"self": {}}).set_new_type("caramel").add_condition({"condition": "adjacent", "type": "sun"}).animate("shake"))
    self.transforms.push_back(transform().set_type("sugarcube").set_new_type("candy").animate("shake"))
    self.sfx = ["jump"]
    
    self.texture = load_texture("res://cc-expansion/symbols/sugarcube.png")
    self.name = "Sugar Cube"
    self.description = .get_description() + " Part of the <color_92F4EC>CC Expansion<end> mod."