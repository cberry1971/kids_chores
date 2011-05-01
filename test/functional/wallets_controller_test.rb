require 'test_helper'

class WalletsControllerTest < ActionController::TestCase
  setup do
    @wallet = wallets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wallets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wallet" do
    assert_difference('Wallet.count') do
      post :create, :wallet => @wallet.attributes
    end

    assert_redirected_to wallet_path(assigns(:wallet))
  end

  test "should show wallet" do
    get :show, :id => @wallet.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @wallet.to_param
    assert_response :success
  end

  test "should update wallet" do
    put :update, :id => @wallet.to_param, :wallet => @wallet.attributes
    assert_redirected_to wallet_path(assigns(:wallet))
  end

  test "should destroy wallet" do
    assert_difference('Wallet.count', -1) do
      delete :destroy, :id => @wallet.to_param
    end

    assert_redirected_to wallets_path
  end
end
