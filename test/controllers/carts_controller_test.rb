require 'test_helper'

class CartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cart = carts(:one)
  end

  test "should get index" do
    get carts_url
    assert_response :success
  end

  test "should get new" do
    get new_cart_url
    assert_response :success
  end

  test "should create cart" do
    assert_difference('Cart.count') do
      post carts_url, params: { cart: {  } }
    end

    assert_redirected_to cart_url(Cart.last)
  end

  test "should show cart" do
    get cart_url(@cart)
    assert_response :success
  end

  test "should get edit" do
    get edit_cart_url(@cart)
    assert_response :success
  end

  test "should update cart" do
    patch cart_url(@cart), params: { cart: {  } }
    assert_redirected_to cart_url(@cart)
  end

  test "should destroy cart" do
    assert_difference('Cart.count', -1) do
      delete cart_url(@cart)
    end

    assert_redirected_to carts_url
  end


  test "can't delete book in cart" do
    assert_difference('Book.count', 0) do
      delete book_url(books(:two))
    end
    asseert_redirected_to books_url
  end

  test "should destroy book" do
    assert_difference('Book.cont', -1) do
      delete book_url@book)
    end
    assert_redirected_to products_url
  end
end
