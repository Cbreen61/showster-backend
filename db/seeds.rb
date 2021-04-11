# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Show.create(title:"Teen Wolf", status:"Ended", release_date: "06/05/2011", seasons: "6", description:"Teen Wolf is an American supernatural teen drama television series developed by Jeff Davis for MTV, loosely based on the 1985 film of the same name. Tyler Posey portrays the title character, a young werewolf who defends his California town from supernatural creatures and other threats.")
Character.create(name:"Scott McCall", status:"Alive", species:"Werewolf", description:"Scott McCall is a True Alpha werewolf, and the leader of his Pack. Scott is bitten by Peter Hale and turns into a werewolf. He starts a relationship with Allison Argent, a new student whom he later discovers to be part of a werewolf-hunter family. Scott lives with his mother, Melissa McCall, and has a part-time job at Beacon Hills Animal Clinic as an assistant to veterinarian, Alan Deaton, who is his father figure.", show_id:"1")