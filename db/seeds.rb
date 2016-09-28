# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

domestic = PetType.create(type_of_pet: "Domestic")
avian = PetType.create(type_of_pet: "Avian")
exotic = PetType.create(type_of_pet: "Exotic")
fish = PetType.create(type_of_pet: "Fish")
equestrian = PetType.create(type_of_pet: "Equestrian")
small_mammal = PetType.create(type_of_pet: "Small Mammal")

# careproviders will need more!
noah = CareProvider.create(name: "North East Animal Hospital",
                     address: "1401 4th St N",
                     phone: "(727) 822-8501")
# NE Hospital will care for
fourth = CareProvider.create(name: "4th Street Pet Hospital",
                     address: "3125 4th St N",
                     phone: "(727) 289-7190")
pets = CareProvider.create(name: "Pets In The City St Pete",
                     address: "111 2nd Ave NE #113",
                     phone: "(727) 755-7387")
animal_medical = CareProvider.create(name: "Animal Medical Hospital",
                     address: "2540 30th Ave N",
                     phone: "(727) 896-7127")
haines = CareProvider.create(name: "Haines Road Animal Hospital",
                     address: "1401 4th St N",
                     phone: "(727) 525-2118")
Specialization.create(care_provider: noah,
                      pet_type: fish)
Specialization.create(care_provider: noah,
                      pet_type: small_mammal)
Specialization.create(care_provider: fourth,
                      pet_type_id: domestic)
Specialization.create(care_provider: fourth,
                      pet_type_id: exotic)
Specialization.create(care_provider: pets,
                      pet_type_id: domestic)
Specialization.create(care_provider: pets,
                      pet_type_id: fish)
Specialization.create(care_provider: pets,
                      pet_type_id: domestic)
Specialization.create(care_provider: haines,
                      pet_type_id: equestrian)
Specialization.create(care_provider: haines,
                      pet_type_id: domestic)
Specialization.create(care_provider: haines,
                      pet_type_id: avian)
Specialization.create(care_provider: haines,
                      pet_type_id: exotic)
Specialization.create(care_provider: haines,
                      pet_type_id: fish)
Specialization.create(care_provider: haines,
                      pet_type_id: equestrian)
Specialization.create(care_provider: haines,
                      pet_type_id: small_mammal)
