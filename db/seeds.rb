# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
races = Race.create([
{
  name: "Select",
},
{
  name: "Dwarf",
  constitution: 2,
  wisdom: 2,
  charisma: -2
},

{
  name: "Elf",
  constitution: -2,
  dexterity: 2,
  intelligence: 2
},

{
  name: "Gnome",
  strength: -2,
  constitution: 2,
  charisma: 2
},

{
  name: "Half-Elf",
  wild: true
},

{
  name: "Half-Orc",
  wild: true
},

{
  name: "Halfling",
  strength: -2,
  dexterity: 2,
  charisma: 2
},

{
  name: "Human",
  wild: true
}
])
