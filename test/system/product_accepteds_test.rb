require "application_system_test_case"

class ProductAcceptedsTest < ApplicationSystemTestCase
  setup do
    @product_accepted = product_accepteds(:one)
  end

  test "visiting the index" do
    visit product_accepteds_url
    assert_selector "h1", text: "Product accepteds"
  end

  test "should create product accepted" do
    visit product_accepteds_url
    click_on "New product accepted"

    click_on "Create Product accepted"

    assert_text "Product accepted was successfully created"
    click_on "Back"
  end

  test "should update Product accepted" do
    visit product_accepted_url(@product_accepted)
    click_on "Edit this product accepted", match: :first

    click_on "Update Product accepted"

    assert_text "Product accepted was successfully updated"
    click_on "Back"
  end

  test "should destroy Product accepted" do
    visit product_accepted_url(@product_accepted)
    click_on "Destroy this product accepted", match: :first

    assert_text "Product accepted was successfully destroyed"
  end
end
