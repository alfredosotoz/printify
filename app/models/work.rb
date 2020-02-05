class Work < ApplicationRecord

  belongs_to :printer

  # Formato de impresiones Docucolor
  LOG_FORMAT = /(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)/

  def import import_file
    # Abrir el archivo subido por el usuario
    report = File.open(import_file)

    # Flag para descartar las primeras dos lineas 
    flag = 0

    # Ciclo de extraccion de datos y grabado a la base de datos 
    report.each do |line|
      if flag == 0 || flag == 1
        # Do nothing
      else
        # Parsear el documento a string, luego quebrarlos por columnas y guardarlo a un arreglo
        # luego grabarlo a una variable tipo work y salvar a la base de datos 
        record = line.to_s
        data = record.split(/(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)/)
        work = Work.new
        
        number = 0
        data.each do |d|
          case number
          when 0
            number += 1
          when 1
            work.nombre = d
            number += 1
          when 2
            work.tamano_de_papel = d
            number += 1
          when 3
            work.tipo_de_papel = d
            number += 1
          when 4
            work.numero_de_paginas_impresas = d
            number += 1
          when 5
            work.fecha = d
            number += 1
          when 6
            work.estado_de_impresion = d
            number += 1
          when 7
            work.usuario = d
            number += 1 
          when 8
            work.numero_de_paginas_blanco_negro = d
            number += 1
          when 9
            work.numero_de_paginas_a_color = d
            number += 1 
          when 10
            work.numero_de_copias_impresas = d
            number += 1
          when 11
            work.paginas = d
            work.save
          end
        end
      end
      flag+= 1
    end
  end
end

