require "application_system_test_case"

class SecretariasTest < ApplicationSystemTestCase
  setup do
    @secretaria = secretarias(:one)
  end

  test "visiting the index" do
    visit secretarias_url
    assert_selector "h1", text: "Secretarias"
  end

  test "should create secretaria" do
    visit secretarias_url
    click_on "New secretaria"

    fill_in "Nome", with: @secretaria.nome
    click_on "Create Secretaria"

    assert_text "Secretaria was successfully created"
    click_on "Back"
  end

  test "should update Secretaria" do
    visit secretaria_url(@secretaria)
    click_on "Edit this secretaria", match: :first

    fill_in "Nome", with: @secretaria.nome
    click_on "Update Secretaria"

    assert_text "Secretaria was successfully updated"
    click_on "Back"
  end

  test "should destroy Secretaria" do
    visit secretaria_url(@secretaria)
    click_on "Destroy this secretaria", match: :first

    assert_text "Secretaria was successfully destroyed"
  end
end
