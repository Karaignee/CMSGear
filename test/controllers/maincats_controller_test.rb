require 'test_helper'

class MaincatsControllerTest < ActionController::TestCase
  setup do
    @maincat = maincats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maincats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maincat" do
    assert_difference('Maincat.count') do
      post :create, maincat: { description: @maincat.description, name: @maincat.name }
    end

    assert_redirected_to maincat_path(assigns(:maincat))
  end

  test "should show maincat" do
    get :show, id: @maincat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maincat
    assert_response :success
  end

  test "should update maincat" do
    patch :update, id: @maincat, maincat: { description: @maincat.description, name: @maincat.name }
    assert_redirected_to maincat_path(assigns(:maincat))
  end

  test "should destroy maincat" do
    assert_difference('Maincat.count', -1) do
      delete :destroy, id: @maincat
    end

    assert_redirected_to maincats_path
  end
end
