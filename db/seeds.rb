# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PetType.create(type_of_pet: "Domestic")
PetType.create(type_of_pet: "Avian")
PetType.create(type_of_pet: "Exotic")
PetType.create(type_of_pet: "Fish")
PetType.create(type_of_pet: "Equestrian")
PetType.create(type_of_pet: "Small Mammal")
# Care_providers will need more!
CareProvider.create(name: "North East Animal Hospital",
                     address: "1401 4th St N",
                     phone: "(727) 822-8501")
# NE Hospital will care for
CareProvider.create(name: "4th Street Pet Hospital",
                     address: "3125 4th St N",
                     phone: "(727) 289-7190")
CareProvider.create(name: "Pets In The City St Pete",
                     address: "111 2nd Ave NE #113",
                     phone: "(727) 755-7387")
CareProvider.create(name: "Animal Medical Hospital",
                     address: "2540 30th Ave N",
                     phone: "(727) 896-7127")
CareProvider.create(name: "Haines Road Animal Hospital",
                     address: "1401 4th St N",
                     phone: "(727) 525-2118")
Specialization.create(care_provider_id: "1",
                      pet_type_id: "1")
Specialization.create(care_provider_id: "1",
                      pet_type_id: "2")
Specialization.create(CareProvider_id: "2",
                      pet_type_id: "1")
Specialization.create(care_provider_id: "2",
                      pet_type_id: "3")
Specialization.create(care_provider_id: "3",
                      pet_type_id: "1")
Specialization.create(care_provider_id: "3",
                      pet_type_id: "4")
Specialization.create(care_provider_id: "4",
                      pet_type_id: "1")
Specialization.create(care_provider_id: "4",
                      pet_type_id: "5")
Specialization.create(care_provider_id: "5",
                      pet_type_id: "1")
Specialization.create(care_provider_id: "5",
                      pet_type_id: "2")
Specialization.create(care_provider_id: "5",
                      pet_type_id: "3")
Specialization.create(care_provider_id: "5",
                      pet_type_id: "4")
Specialization.create(care_provider_id: "5",
                      pet_type_id: "5")
Specialization.create(care_provider_id: "5",
                      pet_type_id: "6")
