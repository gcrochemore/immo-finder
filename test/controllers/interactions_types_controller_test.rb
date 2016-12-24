require 'test_helper'

class InteractionsTypesControllerTest < ActionController::TestCase
  setup do
    @interactions_type = interactions_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interactions_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interactions_type" do
    assert_difference('InteractionsType.count') do
      post :create, interactions_type: { name: @interactions_type.name }
    end

    assert_redirected_to interactions_type_path(assigns(:interactions_type))
  end

  test "should show interactions_type" do
    get :show, id: @interactions_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interactions_type
    assert_response :success
  end

  test "should update interactions_type" do
    patch :update, id: @interactions_type, interactions_type: { name: @interactions_type.name }
    assert_redirected_to interactions_type_path(assigns(:interactions_type))
  end

  test "should destroy interactions_type" do
    assert_difference('InteractionsType.count', -1) do
      delete :destroy, id: @interactions_type
    end

    assert_redirected_to interactions_types_path
  end
end
