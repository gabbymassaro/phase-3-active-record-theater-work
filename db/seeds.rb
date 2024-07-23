Audition.destroy_all
Role.destroy_all

puts "🌱 Creating roles..."
role1 = Role.create(character_name: "Gladiator")
role2 = Role.create(character_name: "Ellie")

puts "🌱 Creating auditions..."
Audition.create(actor: "Paul Mescal", location: "Ireland", phone: "123456789", hired: 0, role: role1)
Audition.create(actor: "Pedro Pascal", location: "New York", phone: "987654321", hired: 0, role: role1)
Audition.create(actor: "Bella Ramsey", location: "UK", phone: "839276482", hired: 0, role: role2)
