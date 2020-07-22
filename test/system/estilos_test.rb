require "application_system_test_case"

class EstilosTest < ApplicationSystemTestCase
  setup do
    @estilo = estilos(:one)
  end

  test "visiting the index" do
    visit estilos_url
    assert_selector "h1", text: "Estilos"
  end

  test "creating a Estilo" do
    visit estilos_url
    click_on "New Estilo"

    fill_in "Nome", with: @estilo.nome
    click_on "Create Estilo"

    assert_text "Estilo was successfully created"
    click_on "Back"
  end

  test "updating a Estilo" do
    visit estilos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @estilo.nome
    click_on "Update Estilo"

    assert_text "Estilo was successfully updated"
    click_on "Back"
  end

  test "destroying a Estilo" do
    visit estilos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estilo was successfully destroyed"
  end
end
