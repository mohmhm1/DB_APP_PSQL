require 'test_helper'

class VelasControllerTest < ActionController::TestCase
  setup do
    @vela = velas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:velas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vela" do
    assert_difference('Vela.count') do
      post :create, vela: { Date: @vela.Date, Description: @vela.Description, Diagnosis: @vela.Diagnosis, FAS: @vela.FAS, FSE: @vela.FSE, Instrument: @vela.Instrument, Organization: @vela.Organization, Via: @vela.Via, closed: @vela.closed, code: @vela.code, person: @vela.person, resolved: @vela.resolved }
    end

    assert_redirected_to vela_path(assigns(:vela))
  end

  test "should show vela" do
    get :show, id: @vela
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vela
    assert_response :success
  end

  test "should update vela" do
    patch :update, id: @vela, vela: { Date: @vela.Date, Description: @vela.Description, Diagnosis: @vela.Diagnosis, FAS: @vela.FAS, FSE: @vela.FSE, Instrument: @vela.Instrument, Organization: @vela.Organization, Via: @vela.Via, closed: @vela.closed, code: @vela.code, person: @vela.person, resolved: @vela.resolved }
    assert_redirected_to vela_path(assigns(:vela))
  end

  test "should destroy vela" do
    assert_difference('Vela.count', -1) do
      delete :destroy, id: @vela
    end

    assert_redirected_to velas_path
  end
end
