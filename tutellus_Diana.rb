
require 'open-uri'
require 'nokogiri'
require 'csv'

class Tutellus

    def initialize()
    end

    def extraer

        CSV.open('tutellus.csv', 'wb') do |csv|
            csv << %w[TítuloCurso Precio Duración Autor Calificación]
            
            pagina=1
            while (pagina<=4)
                puts "Scrapeando la url https://www.tutellus.com/cursos/programacion/?page=#{pagina}"
                link="https://www.tutellus.com/cursos/programacion/?page=#{pagina}"
                udemyHTML= URI.open(link)
                datos=udemyHTML.read
                
                parsed_content = Nokogiri::HTML(datos)
                
                inf_container = parsed_content.css('.m-equalboxes-wrapper')
                inf_container.css('.equalboxes-item').each do |curso|
                    titulo=curso.css('h3>a.darkblack').inner_text[0..-1]
                    precio=curso.css('.final-price').inner_text[0..-1]
                    calificacion=curso.css('.ion-android-star').inner_text[0..-1]
                    duracion=curso.css('div.course-time>strong').inner_text[0..-1]
                    autor=""
                    autorImg=curso.css('img.user-img').each do |img|
                        autor=img['alt']
                    end

                    csv << [titulo.to_s, precio.to_s, duracion.to_s, autor.to_s,calificacion.to_s]
                    
                end
                    

                pagina+=1
            end
        end
    end
end