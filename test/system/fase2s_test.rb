require "application_system_test_case"

class Fase2sTest < ApplicationSystemTestCase
  setup do
    @fase2 = fase2s(:one)
  end

  test "visiting the index" do
    visit fase2s_url
    assert_selector "h1", text: "Fase2s"
  end

  test "creating a Fase2" do
    visit fase2s_url
    click_on "New Fase2"

    fill_in "Nome", with: @fase2.nome
    click_on "Create Fase2"

    assert_text "Fase2 was successfully created"
    click_on "Back"
  end

  test "updating a Fase2" do
    visit fase2s_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @fase2.nome
    click_on "Update Fase2"

    assert_text "Fase2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Fase2" do
    visit fase2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fase2 was successfully destroyed"
  end
end
