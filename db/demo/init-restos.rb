  require 'faker'

def init_restos
  pant = Restaurant.new(
    name: "La Panthère Verte",
    website: "https://www.thegreenpanther.com/",
    phone_number:"(514) 508-5564",
    location: "160 St-Viateur Est, Montreal, QC"
    )
  pant.save!

  omni = Restaurant.new(
    name: "Omnivore",
    website: "https://www.omnivoregrill.com/",
    phone_number:"(514) 303-5757",
    location:"4306 Boulevard St Laurent, QC H2W 1Z3, Montreal, QC"
    )
  omni.save!

  Restaurant.create!(
    name: "Alma",
    website: "https://www.almamontreal.com/",
    phone_number:"(514) 543-1363",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Arepera",
    website: "https://www.arepera.ca/",
    phone_number:"(514) 508-7267",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Damas",
    website: "https://restaurant-damas.com/",
    phone_number:"(514) 439-5435",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Dinette Triple Crown",
    website: "http://www.dinettetriplecrown.com/",
    phone_number:"(514) 272-2617",
    location: Faker::Address.street_address + ", Montreal, QC"
    )


  Restaurant.create!(
    name: "Lola Rosa",
    website: "https://lolarosa.ca/",
    phone_number:"(514) 543-0613",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Ma Poule Mouillée",
    website: "http://mapoulemouillee.ca/",
    phone_number:"(514) 522-5175",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Qing Hua Dumpling",
    website: "https://www.facebook.com/qinghuademaisonneuve/",
    phone_number:"(514) 903-9887",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Reubens Deli",
    website: "http://reubensdeli.com/",
    phone_number:"(514) 866-1029",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Schwartzs Deli",
    website: "https://www.schwartzsdeli.com/",
    phone_number:"(514) 842-4813",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Sushi Momo",
    website: "https://sushikomomo.ca/en",
    phone_number:"(514) 825-6363",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Atami ",
    website: "https://www.facebook.com/atamimtl",
    phone_number: "(514) 735-5400",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "DJ Poulet ",
    website: "https://www.djpoulet-quebec.com",
    phone_number: "(514) 277-5151",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Gibeau Orange Julep ",
    website: "https://orangejulep.ca ",
    phone_number: "(514) 738-7486",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Kazu ",
    website: "https://kazumontreal.com ",
    phone_number: "(514) 937-2333",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "La Banquise ",
    website: "https://labanquise.com ",
    phone_number: "(514) 525-2415",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Olive & Gourmando ",
    website: "https://www.oliveetgourmando.com ",
    phone_number: "(514) 350-1083",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Queen Sheba ",
    website: "https://www.facebook.com/restaurantqueensheba",
    phone_number: "(514) 840-9494",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Park  ",
    website: "https://www.parkresto.com",
    phone_number: "(514) 750-7534",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Pho Lien  ",
    website: "https://www.facebook.com/PhoLienExpress",
    phone_number: "(514) 735-6949",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Roch le Coq ",
    website: "https://rochlecoq.com",
    phone_number: "(514) 637-2337",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Satay Brothers  ",
    website: "https://sataybrothers.com",
    phone_number: "(514) 933-3507",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Sesame  ",
    website: "https://sesamerestaurant.ca",
    phone_number: "(514) 508-0622",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Vargas Steakhouse ",
    website: "https://www.vargas.ca",
    phone_number: "(514) 875-4545",
    location: Faker::Address.street_address + ", Montreal, QC"
    )
  return [omni, pant]
end
