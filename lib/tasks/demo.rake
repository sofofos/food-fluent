namespace :db do
  namespace :demo do
    Dir[Rails.root.join('db', 'demo', '*.rb')].each do |filename|
      task_name = File.basename(filename, '.rb')
      desc "seed with demo-specific db"
      task task_name.to_sym => :environment do
        load(filename) if File.exist?(filename)
      end
    end
  end
end
