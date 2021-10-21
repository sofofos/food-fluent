# loading cached data for dishes in db/seeds.rb
require 'json'

def update_index
  index_for_datasets = Dish.all.count / 80
  index_for_datasets.zero? ? @idx = "0" : @idx = index_for_datasets + 1
  load_files
end

def load_files
  puts "value of #{@idx} in load_files"
  starters = File.read("storage/starters#{@idx}.json")
  @starters_hash = JSON.parse(starters)

  salad = File.read("storage/salads#{@idx}.json")
  @salad_hash = JSON.parse(salad)

  main = File.read("storage/mains#{@idx}.json")
  @main_hash = JSON.parse(main)

  desserts = File.read("storage/desserts#{@idx}.json")
  @desserts_hash = JSON.parse(desserts)
rescue Errno::ENOENT
  Rake::Task['db:seed:api_calls'].invoke
  retry
end
