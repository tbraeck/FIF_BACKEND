require "test_helper"

class SellersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seller = sellers(:one)
  end

  test "should get index" do
    get sellers_url
    assert_response :success
  end

  test "should get new" do
    get new_seller_url
    assert_response :success
  end

  test "should create seller" do
    assert_difference("Seller.count") do
      post sellers_url, params: { seller: { address: @seller.address, company_name: @seller.company_name, email: @seller.email, phone_number: @seller.phone_number, products_accepted: @seller.products_accepted, type_of_repair: @seller.type_of_repair, zip_code: @seller.zip_code } }
    end

    assert_redirected_to seller_url(Seller.last)
  end

  test "should show seller" do
    get seller_url(@seller)
    assert_response :success
  end

  test "should get edit" do
    get edit_seller_url(@seller)
    assert_response :success
  end

  test "should update seller" do
    patch seller_url(@seller), params: { seller: { address: @seller.address, company_name: @seller.company_name, email: @seller.email, phone_number: @seller.phone_number, products_accepted: @seller.products_accepted, type_of_repair: @seller.type_of_repair, zip_code: @seller.zip_code } }
    assert_redirected_to seller_url(@seller)
  end

  test "should destroy seller" do
    assert_difference("Seller.count", -1) do
      delete seller_url(@seller)
    end

    assert_redirected_to sellers_url
  end
end
