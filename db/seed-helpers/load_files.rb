# loading cached data for dishes in db/seeds.rb
require 'json'
require_relative 'call_api'

def load_files(i)
  @dish_types.each do |key, value|
    file_path = "storage/#{key}#{i}.json"
    if File.file?(file_path)
      file = File.read(file_path)
      instance_variable_set("@#{key}_hash", JSON.parse(file))
    else
      puts "file #{file_path} not found"
      call_api
    end
  end
end

def update_index
  dir = 'storage'
  num = Dir[File.join(dir, '**', '*.json')].count { |file| File.file?(file) }
  num / 4
end

def call_api
  idx = update_index

  3.times do |i|
    save_queries(@dish_types, idx + i)
  end
end
