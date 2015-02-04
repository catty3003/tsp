require 'test_helper'

class AnmeldungsControllerTest < ActionController::TestCase
  setup do
    @anmeldung = anmeldungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anmeldungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anmeldung" do
    assert_difference('Anmeldung.count') do
      post :create, anmeldung: { amtliches_kennzeichen1: @anmeldung.amtliches_kennzeichen1, amtliches_kennzeichen2: @anmeldung.amtliches_kennzeichen2, evb_nr: @anmeldung.evb_nr, feinstaubplakette: @anmeldung.feinstaubplakette, fz_brief_nr: @anmeldung.fz_brief_nr, identnummer: @anmeldung.identnummer, kunde_id: @anmeldung.kunde_id, kva_notiz: @anmeldung.kva_notiz, neues_kennzeichen1: @anmeldung.neues_kennzeichen1, neues_kennzeichen2: @anmeldung.neues_kennzeichen2, saison_bis: @anmeldung.saison_bis, saison_von: @anmeldung.saison_von, tsp_notiz: @anmeldung.tsp_notiz, versand_art: @anmeldung.versand_art }
    end

    assert_redirected_to anmeldung_path(assigns(:anmeldung))
  end

  test "should show anmeldung" do
    get :show, id: @anmeldung
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anmeldung
    assert_response :success
  end

  test "should update anmeldung" do
    patch :update, id: @anmeldung, anmeldung: { amtliches_kennzeichen1: @anmeldung.amtliches_kennzeichen1, amtliches_kennzeichen2: @anmeldung.amtliches_kennzeichen2, evb_nr: @anmeldung.evb_nr, feinstaubplakette: @anmeldung.feinstaubplakette, fz_brief_nr: @anmeldung.fz_brief_nr, identnummer: @anmeldung.identnummer, kunde_id: @anmeldung.kunde_id, kva_notiz: @anmeldung.kva_notiz, neues_kennzeichen1: @anmeldung.neues_kennzeichen1, neues_kennzeichen2: @anmeldung.neues_kennzeichen2, saison_bis: @anmeldung.saison_bis, saison_von: @anmeldung.saison_von, tsp_notiz: @anmeldung.tsp_notiz, versand_art: @anmeldung.versand_art }
    assert_redirected_to anmeldung_path(assigns(:anmeldung))
  end

  test "should destroy anmeldung" do
    assert_difference('Anmeldung.count', -1) do
      delete :destroy, id: @anmeldung
    end

    assert_redirected_to anmeldungs_path
  end
end
