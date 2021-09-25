extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

# Called when the symbol is first initialized.
func init(modloader: Reference, params):
    # Set this symbol's reference to the modloader. Always include this line.
    self.modloader = modloader
    
    self.id = "leaves"
    self.value = 2
    self.values = []
    self.rarity = "uncommon"
    self.groups = ["plant", "farmerlikes"]
    self.sfx = ["bee"]
    self.transforms.push_back(transform().set_type("rain").set_new_type("tea").consumes().animate("bounce"))
    
    self.texture = load_texture("res://cc-expansion/symbols/leaves.png")
    self.name = "Leaves"
    self.description = .get_description() + " Part of the <color_92F4EC>CC Expansion<end> mod."