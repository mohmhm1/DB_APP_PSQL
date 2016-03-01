require 'test_helper'

class SitesControllerTest < ActionController::TestCase
  setup do
    @site = sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site" do
    assert_difference('Site.count') do
      post :create, site: { AssayPackage: @site.AssayPackage, FAS: @site.FAS, FAS: @site.FAS, FSE: @site.FSE, MappingTool: @site.MappingTool, NGS: @site.NGS, NGSFSE: @site.NGSFSE, NGSInstall: @site.NGSInstall, NGSPQandTraining: @site.NGSPQandTraining, NGSSXSN: @site.NGSSXSN, NGSassay: @site.NGSassay, PQandTraining: @site.PQandTraining, RGQSN: @site.RGQSN, RgqSoftware: @site.RgqSoftware, SAReporter: @site.SAReporter, SQ301: @site.SQ301, SQSuite: @site.SQSuite, SQreporter: @site.SQreporter, ST401e: @site.ST401e, ST401i: @site.ST401i, SxSerialNumber: @site.SxSerialNumber, TrainedOn: @site.TrainedOn, contacts: @site.contacts, email: @site.email, installed: @site.installed, location: @site.location, site: @site.site }
    end

    assert_redirected_to site_path(assigns(:site))
  end

  test "should show site" do
    get :show, id: @site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site
    assert_response :success
  end

  test "should update site" do
    patch :update, id: @site, site: { AssayPackage: @site.AssayPackage, FAS: @site.FAS, FAS: @site.FAS, FSE: @site.FSE, MappingTool: @site.MappingTool, NGS: @site.NGS, NGSFSE: @site.NGSFSE, NGSInstall: @site.NGSInstall, NGSPQandTraining: @site.NGSPQandTraining, NGSSXSN: @site.NGSSXSN, NGSassay: @site.NGSassay, PQandTraining: @site.PQandTraining, RGQSN: @site.RGQSN, RgqSoftware: @site.RgqSoftware, SAReporter: @site.SAReporter, SQ301: @site.SQ301, SQSuite: @site.SQSuite, SQreporter: @site.SQreporter, ST401e: @site.ST401e, ST401i: @site.ST401i, SxSerialNumber: @site.SxSerialNumber, TrainedOn: @site.TrainedOn, contacts: @site.contacts, email: @site.email, installed: @site.installed, location: @site.location, site: @site.site }
    assert_redirected_to site_path(assigns(:site))
  end

  test "should destroy site" do
    assert_difference('Site.count', -1) do
      delete :destroy, id: @site
    end

    assert_redirected_to sites_path
  end
end
