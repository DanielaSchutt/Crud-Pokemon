require "application_system_test_case"

class VantagemsTest < ApplicationSystemTestCase
  setup do
    @vantagem = vantagems(:one)
  end

  test "visiting the index" do
    visit vantagems_url
    assert_selector "h1", text: "Vantagems"
  end

  test "creating a Vantagem" do
    visit vantagems_url
    click_on "New Vantagem"

    fill_in "Nome", with: @vantagem.nome
    click_on "Create Vantagem"

    assert_text "Vantagem was successfully created"
    click_on "Back"
  end

  test "updating a Vantagem" do
    visit vantagems_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @vantagem.nome
    click_on "Update Vantagem"

    assert_text "Vantagem was successfully updated"
    click_on "Back"
  end

  test "destroying a Vantagem" do
    visit vantagems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vantagem was successfully destroyed"
  end
end
