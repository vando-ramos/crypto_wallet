require "application_system_test_case"

class ConsensusMechanismsTest < ApplicationSystemTestCase
  setup do
    @consensus_mechanism = consensus_mechanisms(:one)
  end

  test "visiting the index" do
    visit consensus_mechanisms_url
    assert_selector "h1", text: "Consensus Mechanisms"
  end

  test "creating a Consensus mechanism" do
    visit consensus_mechanisms_url
    click_on "New Consensus Mechanism"

    fill_in "Acronym", with: @consensus_mechanism.acronym
    fill_in "Description", with: @consensus_mechanism.description
    click_on "Create Consensus mechanism"

    assert_text "Consensus mechanism was successfully created"
    click_on "Back"
  end

  test "updating a Consensus mechanism" do
    visit consensus_mechanisms_url
    click_on "Edit", match: :first

    fill_in "Acronym", with: @consensus_mechanism.acronym
    fill_in "Description", with: @consensus_mechanism.description
    click_on "Update Consensus mechanism"

    assert_text "Consensus mechanism was successfully updated"
    click_on "Back"
  end

  test "destroying a Consensus mechanism" do
    visit consensus_mechanisms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consensus mechanism was successfully destroyed"
  end
end
