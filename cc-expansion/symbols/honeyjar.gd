extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

# Called when the symbol is first initialized.
func init(modloader: Reference, params):
    # Set this symbol's reference to the modloader. Always include this line.
    self.modloader = modloader
    
    self.id = "honeyjar"
    self.value = 1
    self.values = [10]
    self.rarity = "common"
    self.groups = ["food"]
    add_sfx_redirect("honey", "default", "destroy")
    self.buffs.push_back(buff().set_target({"self": {}}).add_condition({"condition": "destroyed"}).set_value(values[0]))
    self.sfx = ["jump"]
    
    self.texture = load_texture("res://cc-expansion/symbols/honeyjar.png")
    self.name = "Honey Jar"
    self.description = .get_description() + " Part of the <color_92F4EC>CC Expansion<end> mod."