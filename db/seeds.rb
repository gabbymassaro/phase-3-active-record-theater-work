Actor.destroy_all
Role.destroy_all
Audition.destroy_all

puts "🌱 Creating actors..."
actor1 = Actor.create(name: "Paul Mescal", phone: "123456789")
actor2 = Actor.create(name: "Pedro Pascal", phone: "987654321")
actor3 = Actor.create(name: "Bella Ramsey", phone: "839276482")

puts "🌱 Creating roles..."
role1 = Role.create(character_name: "Gladiator")
role2 = Role.create(character_name: "Ellie")

puts "🌱 Creating auditions..."
Audition.create(actor: actor1, location: "Ireland", hired: false, role: role1)
Audition.create(actor: actor2, location: "New York", hired: false, role: role1)
Audition.create(actor: actor3, location: "UK", hired: false, role: role2)
