require "application_system_test_case"

class SecretariaTest < ApplicationSystemTestCase
  setup do
    @secretarium = secretaria(:one)
  end

  test "visiting the index" do
    visit secretaria_url
    assert_selector "h1", text: "Secretaria"
  end

  test "should create secretarium" do
    visit secretaria_url
    click_on "New secretarium"

    fill_in "Nome", with: @secretarium.nome
    click_on "Create Secretarium"

    assert_text "Secretarium was successfully created"
    click_on "Back"
  end

  test "should update Secretarium" do
    visit secretarium_url(@secretarium)
    click_on "Edit this secretarium", match: :first

    fill_in "Nome", with: @secretarium.nome
    click_on "Update Secretarium"

    assert_text "Secretarium was successfully updated"
    click_on "Back"
  end

  test "should destroy Secretarium" do
    visit secretarium_url(@secretarium)
    click_on "Destroy this secretarium", match: :first

    assert_text "Secretarium was successfully destroyed"
  end
end
