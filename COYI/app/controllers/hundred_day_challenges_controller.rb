class HundredDayChallengesController < ApplicationController
  before_action :set_hundred_day_challenge, only: [:show, :edit, :update, :destroy]

  # GET /hundred_day_challenges
  # GET /hundred_day_challenges.json
  def index
    @hundred_day_challenges = HundredDayChallenge.all
  end

  # GET /hundred_day_challenges/1
  # GET /hundred_day_challenges/1.json
  def show
  end

  # GET /hundred_day_challenges/new
  def new
    @hundred_day_challenge = HundredDayChallenge.new
  end

  # GET /hundred_day_challenges/1/edit
  def edit
  end

  # POST /hundred_day_challenges
  # POST /hundred_day_challenges.json
  def create
    @hundred_day_challenge = HundredDayChallenge.new(hundred_day_challenge_params)

    respond_to do |format|
      if @hundred_day_challenge.save
        format.html { redirect_to @hundred_day_challenge, notice: 'Hundred day challenge was successfully created.' }
        format.json { render :show, status: :created, location: @hundred_day_challenge }
      else
        format.html { render :new }
        format.json { render json: @hundred_day_challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hundred_day_challenges/1
  # PATCH/PUT /hundred_day_challenges/1.json
  def update
    respond_to do |format|
      if @hundred_day_challenge.update(hundred_day_challenge_params)
        format.html { redirect_to @hundred_day_challenge, notice: 'Hundred day challenge was successfully updated.' }
        format.json { render :show, status: :ok, location: @hundred_day_challenge }
      else
        format.html { render :edit }
        format.json { render json: @hundred_day_challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hundred_day_challenges/1
  # DELETE /hundred_day_challenges/1.json
  def destroy
    @hundred_day_challenge.destroy
    respond_to do |format|
      format.html { redirect_to hundred_day_challenges_url, notice: 'Hundred day challenge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hundred_day_challenge
      @hundred_day_challenge = HundredDayChallenge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hundred_day_challenge_params
      params.require(:hundred_day_challenge).permit(:Email, :Address, :First_name, :Last_name, :Location, :Organisation)
    end
end
