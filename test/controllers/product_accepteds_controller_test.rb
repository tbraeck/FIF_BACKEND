require "test_helper"

class ProductAcceptedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_accepted = product_accepteds(:one)
  end

  test "should get index" do
    get product_accepteds_url
    assert_response :success
  end

  test "should get new" do
    get new_product_accepted_url
    assert_response :success
  end

  test "should create product_accepted" do
    assert_difference("ProductAccepted.count") do
      post product_accepteds_url, params: { product_accepted: {} }
    end

    assert_redirected_to product_accepted_url(ProductAccepted.last)
  end

  test "should show product_accepted" do
    get product_accepted_url(@product_accepted)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_accepted_url(@product_accepted)
    assert_response :success
  end

  test "should update product_accepted" do
    patch product_accepted_url(@product_accepted), params: { product_accepted: {} }
    assert_redirected_to product_accepted_url(@product_accepted)
  end

  test "should destroy product_accepted" do
    assert_difference("ProductAccepted.count", -1) do
      delete product_accepted_url(@product_accepted)
    end

    assert_redirected_to product_accepteds_url
  end
end
