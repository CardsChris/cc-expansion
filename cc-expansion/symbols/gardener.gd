extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

# Called when the symbol is first initialized.
func init(modloader: Reference, params):
    # Set this symbol's reference to the modloader. Always include this line.
    self.modloader = modloader
    
    self.id = "gardener"
    self.value = 2
    self.values = []
    self.rarity = "rare"
    self.groups = ["human", "doglikes", "organism"]
    self.sfx = ["farmer"]
    self.destroys.push_back(destroy().set_group("gardenerlikes").set_buff("permanent_bonus", 1).animate("bounce"))
    
    self.texture = load_texture("res://cc-expansion/symbols/gardener.png")
    self.name = "Gardener"
    self.description = .get_description() + " Part of the <color_92F4EC>CC Expansion<end> mod."