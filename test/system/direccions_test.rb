require "application_system_test_case"

class DireccionsTest < ApplicationSystemTestCase
  setup do
    @direccion = direccions(:one)
  end

  test "visiting the index" do
    visit direccions_url
    assert_selector "h1", text: "Direccions"
  end

  test "should create direccion" do
    visit direccions_url
    click_on "New direccion"

    fill_in "Ciudad", with: @direccion.ciudad
    fill_in "Codigo postal", with: @direccion.codigo_postal
    fill_in "Direccion linea1", with: @direccion.direccion_linea1
    fill_in "Direccion linea2", with: @direccion.direccion_linea2
    fill_in "Usuario", with: @direccion.usuario_id
    click_on "Create Direccion"

    assert_text "Direccion was successfully created"
    click_on "Back"
  end

  test "should update Direccion" do
    visit direccion_url(@direccion)
    click_on "Edit this direccion", match: :first

    fill_in "Ciudad", with: @direccion.ciudad
    fill_in "Codigo postal", with: @direccion.codigo_postal
    fill_in "Direccion linea1", with: @direccion.direccion_linea1
    fill_in "Direccion linea2", with: @direccion.direccion_linea2
    fill_in "Usuario", with: @direccion.usuario_id
    click_on "Update Direccion"

    assert_text "Direccion was successfully updated"
    click_on "Back"
  end

  test "should destroy Direccion" do
    visit direccion_url(@direccion)
    click_on "Destroy this direccion", match: :first

    assert_text "Direccion was successfully destroyed"
  end
end
