require 'test_helper'

class LogloansControllerTest < ActionController::TestCase
  setup do
    @logloan = logloans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logloans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create logloan" do
    assert_difference('Logloan.count') do
      post :create, logloan: { book_id: @logloan.book_id, loandate: @logloan.loandate, loanreturn: @logloan.loanreturn, physical: @logloan.physical, user_id: @logloan.user_id }
    end

    assert_redirected_to logloan_path(assigns(:logloan))
  end

  test "should show logloan" do
    get :show, id: @logloan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @logloan
    assert_response :success
  end

  test "should update logloan" do
    patch :update, id: @logloan, logloan: { book_id: @logloan.book_id, loandate: @logloan.loandate, loanreturn: @logloan.loanreturn, physical: @logloan.physical, user_id: @logloan.user_id }
    assert_redirected_to logloan_path(assigns(:logloan))
  end

  test "should destroy logloan" do
    assert_difference('Logloan.count', -1) do
      delete :destroy, id: @logloan
    end

    assert_redirected_to logloans_path
  end
end
