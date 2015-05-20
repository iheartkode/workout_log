require 'test_helper'
class WorkoutsControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workouts)
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should show workout" do
    get :show, id: @workout
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "index should render correct template and layout" do
    get :index
    assert_template :index
    assert_template layout: "layouts/application"
  end

  test "show should render correct template" do
    get :show
    assert_template :show
  end
end
