extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

# Called when the symbol is first initialized.
func init(modloader: Reference, params):
    # Set this symbol's reference to the modloader. Always include this line.
    self.modloader = modloader
    
    self.id = "politician"
    self.value = 5
    self.values = [10]
    self.rarity = "very_rare"
    self.groups = ["human", "organism"]
    self.buffs.push_back(buff().set_type("billionaire").set_buff_type("temporary_bonus").set_value(5))
    self.adds.push_back(add().set_new_type("coin").random(0).animate("shake"))
    self.sfx = ["mmm"]
    
    self.texture = load_texture("res://cc-expansion/symbols/politician.png")
    self.name = "Politician"
    self.description = .get_description() + " Part of the <color_92F4EC>CC Expansion<end> mod."