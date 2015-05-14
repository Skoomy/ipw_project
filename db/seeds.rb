# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Role.create({name: "Classique", description: "Peut lire les annonces"})
r3 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})
 
u1 = User.create({nom: "Sally", prenom: "Bob", email: "sally@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u2 = User.create({nom: "Sue", email: "sue@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u3 = User.create({nom: "Kev", email: "kev@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u4 = User.create({nom: "Jack", email: "jack@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r3.id})
 
i1 = Annonce.create({entreprise: "entreprise1", titre: "titre1", type_offre: "stage", description: "blablablabla", duree: 25, date_debut: "11-03-1993", moyen_contact: "telephone", user_id: u1.id})
i2 = Annonce.create({entreprise: "entreprise2", titre: "titre2", type_offre: "stage", description: "blablablabla", duree: 25, date_debut: "11-03-1993", moyen_contact: "telephone", user_id: u2.id})
i3 = Annonce.create({entreprise: "entreprise3", titre: "titre3", type_offre: "stage", description: "blablablabla", duree: 25, date_debut: "11-03-1993", moyen_contact: "telephone", user_id: u3.id})
i4 = Annonce.create({entreprise: "entreprise4", titre: "titre4", type_offre: "stage", description: "blablablabla", duree: 25, date_debut: "11-03-1993", moyen_contact: "telephone", user_id: u4.id}) 
