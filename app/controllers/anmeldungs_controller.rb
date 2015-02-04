class AnmeldungsController < ApplicationController
  before_action :set_anmeldung, only: [:show, :edit, :update, :destroy]

  # GET /anmeldungs
  # GET /anmeldungs.json
  def index
    @anmeldungs = Anmeldung.all
  end

  # GET /anmeldungs/1
  # GET /anmeldungs/1.json
  def show
  end

  # GET /anmeldungs/new
  def new
    @anmeldung = Anmeldung.new
  end

  # GET /anmeldungs/1/edit
  def edit
  end

  # POST /anmeldungs
  # POST /anmeldungs.json
  def create
    @anmeldung = Anmeldung.new(anmeldung_params)

    respond_to do |format|
      if @anmeldung.save
        format.html { redirect_to @anmeldung, notice: 'Anmeldung was successfully created.' }
        format.json { render :show, status: :created, location: @anmeldung }
      else
        format.html { render :new }
        format.json { render json: @anmeldung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anmeldungs/1
  # PATCH/PUT /anmeldungs/1.json
  def update
    respond_to do |format|
      if @anmeldung.update(anmeldung_params)
        format.html { redirect_to @anmeldung, notice: 'Anmeldung was successfully updated.' }
        format.json { render :show, status: :ok, location: @anmeldung }
      else
        format.html { render :edit }
        format.json { render json: @anmeldung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anmeldungs/1
  # DELETE /anmeldungs/1.json
  def destroy
    @anmeldung.destroy
    respond_to do |format|
      format.html { redirect_to anmeldungs_url, notice: 'Anmeldung was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anmeldung
      @anmeldung = Anmeldung.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anmeldung_params
      params.require(:anmeldung).permit(:identnummer, :fz_brief_nr, :amtliches_kennzeichen1, :amtliches_kennzeichen2, :neues_kennzeichen1, :neues_kennzeichen2, :feinstaubplakette, :saison_von, :saison_bis, :evb_nr, :kva_notiz, :tsp_notiz, :versand_art, :kunde_id)
    end
end
