# Rack-Based Servers Application Start File.
require_relative 'config/environment'

run Rails.application
Rails.application.load_server
