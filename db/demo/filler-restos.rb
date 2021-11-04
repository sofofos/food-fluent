mrequire_relative '../seed-helpers/load_files'
require_relative '../seed-helpers/make_dishes'

def make_filler(our_two)


  stack = Restaurant.all
  restos = stack - our_two

  load_files(0)

  restos.each_with_index do |restaurant, i|
    make_dishes(restaurant, i)
  end
end
