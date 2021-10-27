# loading cached data for dishes in db/seeds.rb
require 'json'
require_relative 'api_calls'


def load_files
  idx = update_index
  idx.times do |i|
    dish_type.each do |key, value|
      file_path = "storage/#{key}#{i}.json"
      if File.file?(file_path)
        file = File.read(file_path)
        instance_variable_set("@{key}_hash", JSON.parse(file))
      else
        call_api
      end
    end
  end
end

def call_api
  puts "file not found, calling Edamam for fresh new data"
  Rake::Task['db:seed:api_calls'].invoke
end


