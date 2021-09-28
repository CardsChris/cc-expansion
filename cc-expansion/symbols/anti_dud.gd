extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

# Called when the symbol is first initialized.
func init(modloader: Reference, params):
    # Set this symbol's reference to the modloader. Always include this line.
    self.modloader = modloader
    
    self.id = "anti_dud"
    self.value = 0
    self.values = []
    self.rarity = "very_rare"
    self.groups = []
    self.sfx = ["growhit"]
    self.buffs.push_back(buff().set_value(2).add_condition({"condition": "turns", "operator": "every", "value": 10}).animate("shake"))
    self.destroys.push_back(destroy().set_type("dud").consumes().animate("bounce"))
    self.adds.push_back(add().set_new_type("void_creature").set_quantity(3).add_condition({"condition": "adjacent", "type": "dud"}).animate("bounce"))
    self.texture = load_texture("res://cc-expansion/symbols/anti_dud.png")
    self.name = "Anti Dud"
    self.description = .get_description() + " Part of the <color_92F4EC>CC Expansion<end> mod."