require "application_system_test_case"

class EmpanadasTest < ApplicationSystemTestCase
  setup do
    @empanada = empanadas(:one)
  end

  test "visiting the index" do
    visit empanadas_url
    assert_selector "h1", text: "Empanadas"
  end

  test "creating a Empanada" do
    visit empanadas_url
    click_on "New Empanada"

    fill_in "Cantidad", with: @empanada.cantidad
    fill_in "Ingrediente ppal", with: @empanada.ingrediente_ppal
    fill_in "Ingrediente secundario", with: @empanada.ingrediente_secundario
    click_on "Create Empanada"

    assert_text "Empanada was successfully created"
    click_on "Back"
  end

  test "updating a Empanada" do
    visit empanadas_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @empanada.cantidad
    fill_in "Ingrediente ppal", with: @empanada.ingrediente_ppal
    fill_in "Ingrediente secundario", with: @empanada.ingrediente_secundario
    click_on "Update Empanada"

    assert_text "Empanada was successfully updated"
    click_on "Back"
  end

  test "destroying a Empanada" do
    visit empanadas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Empanada was successfully destroyed"
  end
end
