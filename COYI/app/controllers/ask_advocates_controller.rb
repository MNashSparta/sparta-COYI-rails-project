class AskAdvocatesController < ApplicationController
  before_action :set_ask_advocate, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!
  # GET /ask_advocates
  # GET /ask_advocates.json
  def index


      @ask_advocates = current_user.ask_advocates


end

  # GET /ask_advocates/1
  # GET /ask_advocates/1.json
  def show
  end

  # GET /ask_advocates/new
  def new
    @ask_advocate = AskAdvocate.new
  end

  # GET /ask_advocates/1/edit
  def edit
  end

  # POST /ask_advocates
  # POST /ask_advocates.json
  def create
    @ask_advocate = AskAdvocate.new(ask_advocate_params)
    @ask_advocate.user=current_user
# @ask_advocate.user = current_user
    respond_to do |format|
      if @ask_advocate.save
        format.html { redirect_to @ask_advocate, notice: 'Ask advocate was successfully created.' }
        format.json { render :show, status: :created, location: @ask_advocate }
      else
        format.html { render :new }
        format.json { render json: @ask_advocate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ask_advocates/1
  # PATCH/PUT /ask_advocates/1.json
  def update
    respond_to do |format|
      if @ask_advocate.update(ask_advocate_params)
        format.html { redirect_to @ask_advocate, notice: 'Ask advocate was successfully updated.' }
        format.json { render :show, status: :ok, location: @ask_advocate }
      else
        format.html { render :edit }
        format.json { render json: @ask_advocate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ask_advocates/1
  # DELETE /ask_advocates/1.json
  def destroy
    @ask_advocate.destroy
    respond_to do |format|
      format.html { redirect_to ask_advocates_url, notice: 'Ask advocate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ask_advocate
      @ask_advocate = AskAdvocate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ask_advocate_params
      params.require(:ask_advocate).permit(:question)
    end
end
