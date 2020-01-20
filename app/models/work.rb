class Work < ApplicationRecord

# Formato de impresiones Docucolor
LOG_FORMAT = /(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)\t(.*)/

# Indicador de lineas en el archivo de Texto
flag = 0

def import import_file 
  File.foreach( import_file.path ).with_index do |line, index| 
    if flag == 0 || flag == 1
      #
    else
      x = line.match(LOG_FORMAT){ |m| Work.new(*m.captures)}
      x.save
    end
    flag+= 1
  end
end

end
