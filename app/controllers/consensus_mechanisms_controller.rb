class ConsensusMechanismsController < ApplicationController
  before_action :set_consensus_mechanism, only: %i[ show edit update destroy ]

  # GET /consensus_mechanisms or /consensus_mechanisms.json
  def index
    @consensus_mechanisms = ConsensusMechanism.all
  end

  # GET /consensus_mechanisms/1 or /consensus_mechanisms/1.json
  def show
  end

  # GET /consensus_mechanisms/new
  def new
    @consensus_mechanism = ConsensusMechanism.new
  end

  # GET /consensus_mechanisms/1/edit
  def edit
  end

  # POST /consensus_mechanisms or /consensus_mechanisms.json
  def create
    @consensus_mechanism = ConsensusMechanism.new(consensus_mechanism_params)

    respond_to do |format|
      if @consensus_mechanism.save
        format.html { redirect_to consensus_mechanism_url(@consensus_mechanism), notice: "Consensus mechanism was successfully created." }
        format.json { render :show, status: :created, location: @consensus_mechanism }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consensus_mechanism.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consensus_mechanisms/1 or /consensus_mechanisms/1.json
  def update
    respond_to do |format|
      if @consensus_mechanism.update(consensus_mechanism_params)
        format.html { redirect_to consensus_mechanism_url(@consensus_mechanism), notice: "Consensus mechanism was successfully updated." }
        format.json { render :show, status: :ok, location: @consensus_mechanism }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consensus_mechanism.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consensus_mechanisms/1 or /consensus_mechanisms/1.json
  def destroy
    @consensus_mechanism.destroy

    respond_to do |format|
      format.html { redirect_to consensus_mechanisms_url, notice: "Consensus mechanism was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consensus_mechanism
      @consensus_mechanism = ConsensusMechanism.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consensus_mechanism_params
      params.require(:consensus_mechanism).permit(:description, :acronym)
    end
end
