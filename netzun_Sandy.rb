require 'open-uri'
require 'nokogiri'
require 'csv'

class Netzun

  def initialize()
  end

  def extraer

    CSV.open('netzun.csv', 'wb') do |csv|
      conf=0;
      csv << %w[TítuloCurso Precio Duración Autor Calificación]
      puts "Scrapeando la url"
        
      pagina=1

      while(pagina<=34)
        link="https://netzun.com/cursos-online?pagina=#{pagina}"
        puts(link)
        udemyHTML= URI.open(link)
        datos=udemyHTML.read
        parsed_content = Nokogiri::HTML(datos)
        
        inf_container = parsed_content.css('div.container.c-courses__content')
        inf_container.css('li').each do |curso|
          titulo=curso.css('p.title').inner_text
          precio=curso.css('.btn.btn--secondary').inner_text[0..15]
          precio=precio.sub "Comprar", ""
          #puts(titulo)
          #puts(precio)
          duracion=curso.css('div.c-course-card__information>span').inner_text[0..9]
          #puts(duracion)
          calificacion=curso.css('div.c-course-card__information>span').inner_text[7..14]
          calificacion=calificacion.delete('mins')
          calificacion=calificacion[0,3]
          #puts(calificacion)
          
          autor= curso.css('p.c-course-card__author>span').inner_text
          #puts(autor)
          
          csv << [titulo.to_s, precio.to_s, duracion.to_s, autor.to_s,calificacion.to_s]
        end
        pagina+=1
      end









    end
  end






end

