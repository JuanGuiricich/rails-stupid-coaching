require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h2", text: "Ask me anything, I will try to help you out"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Send"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "saying Hello? yields a silly question response from the coach" do
    visit ask_url
    fill_in "question", with: "pepe?"
    click_on "Send"

    assert_text "Silly question, get dressed and go to work!."
  end

  test "saying I am going to work will get the coach to respond great" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Send"

    assert_text "Great"
  end
end
