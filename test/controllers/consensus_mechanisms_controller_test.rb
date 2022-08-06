require 'test_helper'

class ConsensusMechanismsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consensus_mechanism = consensus_mechanisms(:one)
  end

  test "should get index" do
    get consensus_mechanisms_url
    assert_response :success
  end

  test "should get new" do
    get new_consensus_mechanism_url
    assert_response :success
  end

  test "should create consensus_mechanism" do
    assert_difference('ConsensusMechanism.count') do
      post consensus_mechanisms_url, params: { consensus_mechanism: { acronym: @consensus_mechanism.acronym, description: @consensus_mechanism.description } }
    end

    assert_redirected_to consensus_mechanism_url(ConsensusMechanism.last)
  end

  test "should show consensus_mechanism" do
    get consensus_mechanism_url(@consensus_mechanism)
    assert_response :success
  end

  test "should get edit" do
    get edit_consensus_mechanism_url(@consensus_mechanism)
    assert_response :success
  end

  test "should update consensus_mechanism" do
    patch consensus_mechanism_url(@consensus_mechanism), params: { consensus_mechanism: { acronym: @consensus_mechanism.acronym, description: @consensus_mechanism.description } }
    assert_redirected_to consensus_mechanism_url(@consensus_mechanism)
  end

  test "should destroy consensus_mechanism" do
    assert_difference('ConsensusMechanism.count', -1) do
      delete consensus_mechanism_url(@consensus_mechanism)
    end

    assert_redirected_to consensus_mechanisms_url
  end
end
