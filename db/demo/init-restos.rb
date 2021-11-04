  require 'faker'

def init_restos
  pant = Restaurant.new(
    name: "La Panthère Verte",
    website: "https://www.thegreenpanther.com/",
    phone_number:"(514) 508-5564",
    img_url: "restaurants/la-panthere-verte.png",
    location: "160 St-Viateur Est, Montreal, QC"
    )
  pant.save!

  omni = Restaurant.new(
    name: "Omnivore",
    website: "https://www.omnivoregrill.com/",
    phone_number:"(514) 303-5757",
    img_url: "restaurants/omnivore.png",
    location:"4306 Boulevard St Laurent, QC H2W 1Z3, Montreal, QC"
    )
  omni.save!

  Restaurant.create!(
    name: "Alma",
    website: "https://www.almamontreal.com/",
    phone_number:"(514) 543-1363",
    img_url: "restaurants/alma.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Arepera",
    website: "https://www.arepera.ca/",
    phone_number:"(514) 508-7267",
    img_url: "restaurants/arepera.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Damas",
    website: "https://restaurant-damas.com/",
    phone_number:"(514) 439-5435",
    img_url: "restaurants/damas.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Dinette Triple Crown",
    website: "http://www.dinettetriplecrown.com/",
    phone_number:"(514) 272-2617",
    img_url: "restaurants/dinette-triple-crown.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Lola Rosa",
    website: "https://lolarosa.ca/",
    phone_number:"(514) 543-0613",
    img_url: "restaurants/lola-rosa.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Ma Poule Mouillée",
    website: "http://mapoulemouillee.ca/",
    phone_number:"(514) 522-5175",
    img_url: "restaurants/ma-poule-mouillee.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Qing Hua Dumpling",
    website: "https://www.facebook.com/qinghuademaisonneuve/",
    phone_number:"(514) 903-9887",
    img_url: "restaurants/qing-hua-dumpling.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Reubens Deli",
    website: "http://reubensdeli.com/",
    phone_number:"(514) 866-1029",
    img_url: "restaurants/reubens-deli.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Schwartzs Deli",
    website: "https://www.schwartzsdeli.com/",
    phone_number:"(514) 842-4813",
    img_url: "restaurants/schwartzs-deli.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Sushi Momo",
    website: "https://sushikomomo.ca/en",
    phone_number:"(514) 825-6363",
    img_url: "restaurants/sushi-momo.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Atami ",
    website: "https://www.facebook.com/atamimtl",
    phone_number: "(514) 735-5400",
    img_url: "restaurants/atami.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "DJ Poulet ",
    website: "https://www.djpoulet-quebec.com",
    phone_number: "(514) 277-5151",
    img_url: "restaurants/dj-poulet.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Gibeau Orange Julep ",
    website: "https://orangejulep.ca ",
    phone_number: "(514) 738-7486",
    img_url: "restaurants/gibeau-orange-julep.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Kazu ",
    website: "https://kazumontreal.com ",
    phone_number: "(514) 937-2333",
    img_url: "restaurants/kazu.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "La Banquise ",
    website: "https://labanquise.com ",
    phone_number: "(514) 525-2415",
    img_url: "restaurants/la-banquise.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Olive & Gourmando ",
    website: "https://www.oliveetgourmando.com ",
    phone_number: "(514) 350-1083",
    img_url: "restaurants/olive-et-gourmando.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Queen Sheba ",
    website: "https://www.facebook.com/restaurantqueensheba",
    phone_number: "(514) 840-9494",
    img_url: "restaurants/queen-sheba.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Park  ",
    website: "https://www.parkresto.com",
    phone_number: "(514) 750-7534",
    img_url: "restaurants/park.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Pho Lien  ",
    website: "https://www.facebook.com/PhoLienExpress",
    phone_number: "(514) 735-6949",
    img_url: "restaurants/pho-lien.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Roch le Coq ",
    website: "https://rochlecoq.com",
    phone_number: "(514) 637-2337",
    img_url: "restaurants/roch-le-coq.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Satay Brothers  ",
    website: "https://sataybrothers.com",
    phone_number: "(514) 933-3507",
    img_url: "restaurants/satay-brothers.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Sesame  ",
    website: "https://sesamerestaurant.ca",
    phone_number: "(514) 508-0622",
    img_url: "restaurants/sesame.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )

  Restaurant.create!(
    name: "Vargas Steakhouse ",
    website: "https://www.vargas.ca",
    phone_number: "(514) 875-4545",
    img_url: "restaurants/vargas-steakhouse.png",
    location: Faker::Address.street_address + ", Montreal, QC"
    )
  return [omni, pant]
end
