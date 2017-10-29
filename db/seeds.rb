# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
races = Race.create(
  [
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

stats = StatValue.create(
  [
    {
      name: 7,
      value: -4
    },

    {
      name: 8,
      value: -2
    },

    {
      name: 9,
      value: -1
    },

    {
      name: 10,
      value: 0
    },

    {
      name: 11,
      value: 1
    },

    {
      name: 12,
      value: 2
    },

    {
      name: 13,
      value: 3
    },

    {
      name: 14,
      value: 5
    },

    {
      name: 15,
      value: 7
    },

    {
      name: 16,
      value: 10
    },

    {
      name: 17,
      value: 13
    },

    {
      name: 18,
      value: 17
    }
  ])
