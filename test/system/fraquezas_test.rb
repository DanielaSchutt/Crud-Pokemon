require "application_system_test_case"

class FraquezasTest < ApplicationSystemTestCase
  setup do
    @fraqueza = fraquezas(:one)
  end

  test "visiting the index" do
    visit fraquezas_url
    assert_selector "h1", text: "Fraquezas"
  end

  test "creating a Fraqueza" do
    visit fraquezas_url
    click_on "New Fraqueza"

    fill_in "Nome", with: @fraqueza.nome
    click_on "Create Fraqueza"

    assert_text "Fraqueza was successfully created"
    click_on "Back"
  end

  test "updating a Fraqueza" do
    visit fraquezas_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @fraqueza.nome
    click_on "Update Fraqueza"

    assert_text "Fraqueza was successfully updated"
    click_on "Back"
  end

  test "destroying a Fraqueza" do
    visit fraquezas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fraqueza was successfully destroyed"
  end
end
