require 'test_helper'

class InstitutesControllerTest < ActionController::TestCase
  setup do
    @institute = institutes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institutes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institute" do
    assert_difference('Institute.count') do
      post :create, institute: { city: @institute.city, email_address: @institute.email_address, name: @institute.name, operational_mode: @institute.operational_mode, phone: @institute.phone, remarks: @institute.remarks, visiting_address: @institute.visiting_address }
    end

    assert_redirected_to institute_path(assigns(:institute))
  end

  test "should show institute" do
    get :show, id: @institute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institute
    assert_response :success
  end

  test "should update institute" do
    patch :update, id: @institute, institute: { city: @institute.city, email_address: @institute.email_address, name: @institute.name, operational_mode: @institute.operational_mode, phone: @institute.phone, remarks: @institute.remarks, visiting_address: @institute.visiting_address }
    assert_redirected_to institute_path(assigns(:institute))
  end

  test "should destroy institute" do
    assert_difference('Institute.count', -1) do
      delete :destroy, id: @institute
    end

    assert_redirected_to institutes_path
  end
end
