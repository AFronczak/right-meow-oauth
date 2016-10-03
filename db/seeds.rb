# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

canine = PetType.create(type_of_pet: "Canine")
feline = PetType.create(type_of_pet: "Feline")
avian = PetType.create(type_of_pet: "Avian")
exotic = PetType.create(type_of_pet: "Exotic")
fish = PetType.create(type_of_pet: "Fish")
equestrian = PetType.create(type_of_pet: "Equestrian")
small_mammal = PetType.create(type_of_pet: "Small_Mammal")

# careproviders will need more!
noah = CareProvider.create(name: "North East Animal Hospital",
                     address: "1401 4th St N, St. Petersburg, FL",
                     phone: "(727) 822-8501",
                     website: "http://www.northeastanimalhospital.com/")
# NE Hospital will care for
fourth = CareProvider.create(name: "4th Street Pet Hospital",
                     address: "3125 4th St N, St. Petersburg, FL",
                     phone: "(727) 289-7190",
                     website: "http://www.4thstreetpethospital.com/")
pets = CareProvider.create(name: "Pets In The City St Pete",
                     address: "111 2nd Ave NE #113, St. Petersburg, FL",
                     phone: "(727) 755-7387",
                     website: "http://petsinthecitystpete.com/")
animal_medical = CareProvider.create(name: "Animal Medical Hospital",
                     address: "2540 30th Ave N, St. Petersburg, FL",
                     phone: "(727) 896-7127",
                     website: "http://www.animalmedicalhospital.net/")
haines = CareProvider.create(name: "Haines Road Animal Hospital",
                     address: "1401 4th St N, St. Petersburg, FL",
                     phone: "(727) 525-2118",
                     website: "http://www.hainesroadanimalhospital.com/")
ach = CareProvider.create(name: "Animal Health Care Clinic",
                    address: "2118 Drew St, Clearwater, FL",
                    phone: "(727) 466-5501",
                    website: "http://animalhealthcareclinic.com/")
vca = CareProvider.create(name: "VCA Gult Bay Animal Hospital",
                     address: "125 S Belcher Rd, Clearwater, FL",
                     phone: "(727) 797-5107",
                     website: "")
all_pet_care = CareProvider.create(name: "All Pet Care",
                    address: "1453 Sunset Point Rd, Clearwater, FL",
                    phone: "(727) 442-9111",
                    website: "http://allpetcare.com/")

Specialization.create(care_provider: noah,
                      pet_type: feline)
Specialization.create(care_provider: noah,
                      pet_type: canine)
Specialization.create(care_provider: fourth,
                      pet_type: feline)
Specialization.create(care_provider: fourth,
                      pet_type: canine)
Specialization.create(care_provider: pets,
                      pet_type: canine)
Specialization.create(care_provider: pets,
                      pet_type: fish)
Specialization.create(care_provider: pets,
                      pet_type: canine)
Specialization.create(care_provider: haines,
                      pet_type: equestrian)
Specialization.create(care_provider: haines,
                      pet_type: canine)
Specialization.create(care_provider: haines,
                      pet_type: avian)
Specialization.create(care_provider: haines,
                      pet_type: exotic)
Specialization.create(care_provider: haines,
                      pet_type: fish)
Specialization.create(care_provider: haines,
                      pet_type: equestrian)
Specialization.create(care_provider: haines,
                      pet_type: small_mammal)
Specialization.create(care_provider: ach,
                      pet_type: feline)
Specialization.create(care_provider: ach,
                      pet_type: canine)
Specialization.create(care_provider: vca,
                      pet_type: feline)
Specialization.create(care_provider: vca,
                      pet_type: canine)
Specialization.create(care_provider: all_pet_care,
                      pet_type: feline)
Specialization.create(care_provider: all_pet_care,
                      pet_type: canine)
