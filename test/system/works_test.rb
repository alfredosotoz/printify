require "application_system_test_case"

class WorksTest < ApplicationSystemTestCase
  setup do
    @work = works(:one)
  end

  test "visiting the index" do
    visit works_url
    assert_selector "h1", text: "Works"
  end

  test "creating a Work" do
    visit works_url
    click_on "New Work"

    fill_in "Estado de impresion", with: @work.estado_de_impresion
    fill_in "Fecha", with: @work.fecha
    fill_in "Nombre", with: @work.nombre
    fill_in "Numero de copias impresas", with: @work.numero_de_copias_impresas
    fill_in "Numero de paginas a color", with: @work.numero_de_paginas_a_color
    fill_in "Numero de paginas blanco negro", with: @work.numero_de_paginas_blanco_negro
    fill_in "Numero de paginas impresas", with: @work.numero_de_paginas_impresas
    fill_in "Paginas", with: @work.paginas
    fill_in "Tamano de papel", with: @work.tamano_de_papel
    fill_in "Tipo de papel", with: @work.tipo_de_papel
    fill_in "Usuario", with: @work.usuario
    click_on "Create Work"

    assert_text "Work was successfully created"
    click_on "Back"
  end

  test "updating a Work" do
    visit works_url
    click_on "Edit", match: :first

    fill_in "Estado de impresion", with: @work.estado_de_impresion
    fill_in "Fecha", with: @work.fecha
    fill_in "Nombre", with: @work.nombre
    fill_in "Numero de copias impresas", with: @work.numero_de_copias_impresas
    fill_in "Numero de paginas a color", with: @work.numero_de_paginas_a_color
    fill_in "Numero de paginas blanco negro", with: @work.numero_de_paginas_blanco_negro
    fill_in "Numero de paginas impresas", with: @work.numero_de_paginas_impresas
    fill_in "Paginas", with: @work.paginas
    fill_in "Tamano de papel", with: @work.tamano_de_papel
    fill_in "Tipo de papel", with: @work.tipo_de_papel
    fill_in "Usuario", with: @work.usuario
    click_on "Update Work"

    assert_text "Work was successfully updated"
    click_on "Back"
  end

  test "destroying a Work" do
    visit works_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work was successfully destroyed"
  end
end
