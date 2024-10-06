require "test_helper"

class DonorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donor = donors(:one)
  end

  test "should get index" do
    get donors_url
    assert_response :success
  end

  test "should get new" do
    get new_donor_url
    assert_response :success
  end

  test "should create donor" do
    assert_difference("Donor.count") do
      post donors_url, params: { donor: { Seller: @donor.Seller, address: @donor.address, brand: @donor.brand, company_name: @donor.company_name, email: @donor.email, first_name: @donor.first_name, how_broken: @donor.how_broken, last_name: @donor.last_name, phone_number: @donor.phone_number, product_name: @donor.product_name, products_accepted: @donor.products_accepted, type_of_repair: @donor.type_of_repair, zip_code: @donor.zip_code } }
    end

    assert_redirected_to donor_url(Donor.last)
  end

  test "should show donor" do
    get donor_url(@donor)
    assert_response :success
  end

  test "should get edit" do
    get edit_donor_url(@donor)
    assert_response :success
  end

  test "should update donor" do
    patch donor_url(@donor), params: { donor: { Seller: @donor.Seller, address: @donor.address, brand: @donor.brand, company_name: @donor.company_name, email: @donor.email, first_name: @donor.first_name, how_broken: @donor.how_broken, last_name: @donor.last_name, phone_number: @donor.phone_number, product_name: @donor.product_name, products_accepted: @donor.products_accepted, type_of_repair: @donor.type_of_repair, zip_code: @donor.zip_code } }
    assert_redirected_to donor_url(@donor)
  end

  test "should destroy donor" do
    assert_difference("Donor.count", -1) do
      delete donor_url(@donor)
    end

    assert_redirected_to donors_url
  end
end
