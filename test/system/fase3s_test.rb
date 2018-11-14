require "application_system_test_case"

class Fase3sTest < ApplicationSystemTestCase
  setup do
    @fase3 = fase3s(:one)
  end

  test "visiting the index" do
    visit fase3s_url
    assert_selector "h1", text: "Fase3s"
  end

  test "creating a Fase3" do
    visit fase3s_url
    click_on "New Fase3"

    fill_in "Nome", with: @fase3.nome
    click_on "Create Fase3"

    assert_text "Fase3 was successfully created"
    click_on "Back"
  end

  test "updating a Fase3" do
    visit fase3s_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @fase3.nome
    click_on "Update Fase3"

    assert_text "Fase3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Fase3" do
    visit fase3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fase3 was successfully destroyed"
  end
end
