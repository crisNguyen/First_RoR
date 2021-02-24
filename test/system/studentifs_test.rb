require "application_system_test_case"

class StudentifsTest < ApplicationSystemTestCase
  setup do
    @studentif = studentifs(:one)
  end

  test "visiting the index" do
    visit studentifs_url
    assert_selector "h1", text: "Studentifs"
  end

  test "creating a Studentif" do
    visit studentifs_url
    click_on "New Studentif"

    fill_in "Email", with: @studentif.email
    fill_in "Facebook", with: @studentif.facebook
    fill_in "Firts name", with: @studentif.firts_name
    fill_in "Last name", with: @studentif.last_name
    fill_in "Phone", with: @studentif.phone
    click_on "Create Studentif"

    assert_text "Studentif was successfully created"
    click_on "Back"
  end

  test "updating a Studentif" do
    visit studentifs_url
    click_on "Edit", match: :first

    fill_in "Email", with: @studentif.email
    fill_in "Facebook", with: @studentif.facebook
    fill_in "Firts name", with: @studentif.firts_name
    fill_in "Last name", with: @studentif.last_name
    fill_in "Phone", with: @studentif.phone
    click_on "Update Studentif"

    assert_text "Studentif was successfully updated"
    click_on "Back"
  end

  test "destroying a Studentif" do
    visit studentifs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Studentif was successfully destroyed"
  end
end
