require 'test_helper'

class WorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work = works(:one)
  end

  test "should get index" do
    get works_url
    assert_response :success
  end

  test "should get new" do
    get new_work_url
    assert_response :success
  end

  test "should create work" do
    assert_difference('Work.count') do
      post works_url, params: { work: { estado_de_impresion: @work.estado_de_impresion, fecha: @work.fecha, nombre: @work.nombre, numero_de_copias_impresas: @work.numero_de_copias_impresas, numero_de_paginas_a_color: @work.numero_de_paginas_a_color, numero_de_paginas_blanco_negro: @work.numero_de_paginas_blanco_negro, numero_de_paginas_impresas: @work.numero_de_paginas_impresas, paginas: @work.paginas, tamano_de_papel: @work.tamano_de_papel, tipo_de_papel: @work.tipo_de_papel, usuario: @work.usuario } }
    end

    assert_redirected_to work_url(Work.last)
  end

  test "should show work" do
    get work_url(@work)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_url(@work)
    assert_response :success
  end

  test "should update work" do
    patch work_url(@work), params: { work: { estado_de_impresion: @work.estado_de_impresion, fecha: @work.fecha, nombre: @work.nombre, numero_de_copias_impresas: @work.numero_de_copias_impresas, numero_de_paginas_a_color: @work.numero_de_paginas_a_color, numero_de_paginas_blanco_negro: @work.numero_de_paginas_blanco_negro, numero_de_paginas_impresas: @work.numero_de_paginas_impresas, paginas: @work.paginas, tamano_de_papel: @work.tamano_de_papel, tipo_de_papel: @work.tipo_de_papel, usuario: @work.usuario } }
    assert_redirected_to work_url(@work)
  end

  test "should destroy work" do
    assert_difference('Work.count', -1) do
      delete work_url(@work)
    end

    assert_redirected_to works_url
  end
end
