extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

# Called when the symbol is first initialized.
func init(modloader: Reference, params):
    # Set this symbol's reference to the modloader. Always include this line.
    self.modloader = modloader
    
    self.id = "caramel"
    self.value = 2
    self.values = []
    self.rarity = "uncommon"
    self.groups = ["food"]
    self.sfx = ["jump"]
    self.transforms.push_back(transform().set_type("apple").set_new_type("caramel_apple").consumes().animate("bounce"))
    
    self.texture = load_texture("res://cc-expansion/symbols/caramel.png")
    self.name = "Caramel"
    self.description = .get_description() + " Part of the <color_92F4EC>CC Expansion<end> mod."