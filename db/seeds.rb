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

user = User.create(email: "thebob@bob.com", username: "thebob", password: "password")

character_classes = CharacterClass.create(
  [
    {
      name: "Barbarian",
      hit_die: 12,
      bab: "Full",
      base_skills: 4,
      caster: false
    },

    {
      name: "Bard",
      hit_die: 8,
      bab: "Mid",
      base_skills: 6,
      caster: true
    },

    {
      name: "Cleric",
      hit_die: 6,
      bab: "Half",
      base_skills: 2,
      caster: true
    },

    {
      name: "Druid",
      hit_die: 8,
      bab: "Mid",
      base_skills: 4,
      caster: true
    },

    {
      name: "Fighter",
      hit_die: 10,
      bab: "Full",
      base_skills: 2,
      caster: false
    },

    {
      name: "Monk",
      hit_die: 10,
      bab: "Full",
      base_skills: 4,
      caster: false
    },

    {
      name: "Paladin",
      hit_die: 10,
      bab: "Full",
      base_skills: 2,
      caster: true
    },

    {
      name: "Ranger",
      hit_die: 10,
      bab: "Full",
      base_skills: 4,
      caster: true
    },

    {
      name: "Rogue",
      hit_die: 8,
      bab: "Mid",
      base_skills: 8,
      caster: false
    },

    {
      name: "Sorcerer",
      hit_die: 8,
      bab: "Half",
      base_skills: 2,
      caster: true
    },

    {
      name: "Wizard",
      hit_die: 6,
      bab: "Half",
      base_skills: 2,
      caster: true
    },

  ]
)

birgir = Character.create(
  name: "Birgir",
  character_class: "Paladin",
  race_id: 8,
  level: 2,
  user_id: 1
)
