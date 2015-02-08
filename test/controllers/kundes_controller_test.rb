require 'test_helper'

class KundesControllerTest < ActionController::TestCase
  setup do
    @kunde = kundes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kundes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kunde" do
    assert_difference('Kunde.count') do
      post :create, kunde: { adresse: @kunde.adresse, anrede: @kunde.anrede, geburtsdatum: @kunde.geburtsdatum, geburtsort: @kunde.geburtsort, gruppe: @kunde.gruppe, nachname: @kunde.nachname, plz: @kunde.plz, stadt: @kunde.stadt, telefonnummer: @kunde.telefonnummer, tsp_versicherungskunde: @kunde.tsp_versicherungskunde, vorname: @kunde.vorname }
    end

    assert_redirected_to kunde_path(assigns(:kunde))
  end

  test "should show kunde" do
    get :show, id: @kunde
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kunde
    assert_response :success
  end

  test "should update kunde" do
    patch :update, id: @kunde, kunde: { adresse: @kunde.adresse, anrede: @kunde.anrede, geburtsdatum: @kunde.geburtsdatum, geburtsort: @kunde.geburtsort, gruppe: @kunde.gruppe, nachname: @kunde.nachname, plz: @kunde.plz, stadt: @kunde.stadt, telefonnummer: @kunde.telefonnummer, tsp_versicherungskunde: @kunde.tsp_versicherungskunde, vorname: @kunde.vorname }
    assert_redirected_to kunde_path(assigns(:kunde))
  end

  test "should destroy kunde" do
    assert_difference('Kunde.count', -1) do
      delete :destroy, id: @kunde
    end

    assert_redirected_to kundes_path
  end
end