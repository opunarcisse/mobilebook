require 'test_helper'

class ConsultsControllerTest < ActionController::TestCase
  setup do
    @consult = consults(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consults)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consult" do
    assert_difference('Consult.count') do
      post :create, consult: { complain_id: @consult.complain_id, complain_of_patient: @consult.complain_of_patient, complain_type: @consult.complain_type, diagnostic_of_doctor: @consult.diagnostic_of_doctor, drugs_delivered: @consult.drugs_delivered, drugs_delivered_by: @consult.drugs_delivered_by, drugs_delivered_on: @consult.drugs_delivered_on, prescription_of_doctor: @consult.prescription_of_doctor }
    end

    assert_redirected_to consult_path(assigns(:consult))
  end

  test "should show consult" do
    get :show, id: @consult
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consult
    assert_response :success
  end

  test "should update consult" do
    patch :update, id: @consult, consult: { complain_id: @consult.complain_id, complain_of_patient: @consult.complain_of_patient, complain_type: @consult.complain_type, diagnostic_of_doctor: @consult.diagnostic_of_doctor, drugs_delivered: @consult.drugs_delivered, drugs_delivered_by: @consult.drugs_delivered_by, drugs_delivered_on: @consult.drugs_delivered_on, prescription_of_doctor: @consult.prescription_of_doctor }
    assert_redirected_to consult_path(assigns(:consult))
  end

  test "should destroy consult" do
    assert_difference('Consult.count', -1) do
      delete :destroy, id: @consult
    end

    assert_redirected_to consults_path
  end
end
