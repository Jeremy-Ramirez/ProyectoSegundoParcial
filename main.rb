
puts "Scraper Ruby"

require 'open-uri'
require 'nokogiri'
require 'csv'

require './tutellus_Diana.rb'
#require './reedCourses_Jeremy.rb'

cursoDiana = Cursos.new()
cursoDiana.extraer