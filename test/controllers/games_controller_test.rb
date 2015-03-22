require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  test "should get new," do
    get :new,
    assert_response :success
  end

  test "should get success," do
    get :success,
    assert_response :success
  end

  test "should get fail," do
    get :fail,
    assert_response :success
  end

  test "should get final" do
    get :final
    assert_response :success
  end

end
