class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :nombre
      t.string :tamano_de_papel
      t.string :tipo_de_papel
      t.string :numero_de_paginas_impresas
      t.string :fecha
      t.string :estado_de_impresion
      t.string :usuario
      t.string :numero_de_paginas_blanco_negro
      t.string :numero_de_paginas_a_color
      t.string :numero_de_copias_impresas
      t.string :paginas

      t.timestamps
    end
  end
end




