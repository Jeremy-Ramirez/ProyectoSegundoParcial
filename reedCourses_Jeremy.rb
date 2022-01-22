require 'open-uri'
require 'nokogiri'
require 'csv'

class CursosReedCourses

  def initialize()
  end



  def extraer


    CSV.open('reedCourses.csv', 'wb') do |csv|
      conf=0;
      csv << %w[TítuloCurso Precio Duración Autor Calificación]
      
        
      pagina=1




      while(pagina<=60)
        puts "Scrapeando la url https://www.reed.co.uk/courses/?pageno=#{pagina}&keywords=programming"
        link="https://www.reed.co.uk/courses/?pageno=#{pagina}&keywords=programming"
        #link ="https://www.reed.co.uk/courses/?keywords=programming"
        udemyHTML= URI.open(link)
        datos=udemyHTML.read
        parsed_content = Nokogiri::HTML(datos)
        
        inf_container = parsed_content.css('.course-list')
        inf_container.css('li').each do |curso|
          titulo=curso.css('h2.course-title>a.block-link-xs').inner_text[0..-1]
          precio=curso.css('div.course-price>span.price').inner_text
          duracion=curso.css('div.course-features li.clock-icon').inner_text[1..10]
          autor=''
          autorImg= curso.css('div.course-features img.img-thumbnail').each do |img|
            autor=img['alt']
            #print(autor)
          end
          cal=rand(0..5)
     
          if(titulo!="" && precio !="" && duracion!="")
            csv << [titulo.to_s,precio.to_s,duracion.to_s,autor.to_s,cal.to_i]
          end
        end
        pagina+=1
      end









    end
  end







end 