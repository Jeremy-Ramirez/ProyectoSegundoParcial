
puts "Scraper Ruby"

require 'open-uri'
require 'nokogiri'
require 'csv'

require './tutellus_Diana.rb'
require './reedCourses_Jeremy.rb'

cursoDiana = Tutellus.new()
cursoDiana.extraer


cursoJeremy= CursosReedCourses.new()
cursoJeremy.extraer
cursoSandy= Netzun.new()
cursoSandy.extraer


def csv_headers
  ["TítuloCurso", "Precio", "Duración","Autor","Calificación"]
end

files = Dir["tutellus.csv","reedCourses.csv","netzun.csv"].sort_by { |f| "if you want to sort the files" }
file_contents = files.map { |f| CSV.read(f) }

csv_string = CSV.generate do |csv|
  csv << csv_headers
  file_contents.each do |file|
    file.shift                  # remove the headers of each file
    file.each do |row|
      csv << row
    end
  end
end

File.open("CursosGeneral.csv", "w") { |f| f << csv_string }