require "application_system_test_case"

class SegundasTest < ApplicationSystemTestCase
  setup do
    @segunda = segundas(:one)
  end

  test "visiting the index" do
    visit segundas_url
    assert_selector "h1", text: "Segundas"
  end

  test "creating a Segunda" do
    visit segundas_url
    click_on "New Segunda"

    fill_in "Fase", with: @segunda.Fase
    fill_in "Nome", with: @segunda.nome
    click_on "Create Segunda"

    assert_text "Segunda was successfully created"
    click_on "Back"
  end

  test "updating a Segunda" do
    visit segundas_url
    click_on "Edit", match: :first

    fill_in "Fase", with: @segunda.Fase
    fill_in "Nome", with: @segunda.nome
    click_on "Update Segunda"

    assert_text "Segunda was successfully updated"
    click_on "Back"
  end

  test "destroying a Segunda" do
    visit segundas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Segunda was successfully destroyed"
  end
end
