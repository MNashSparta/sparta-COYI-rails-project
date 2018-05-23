class MyResourcesController < ApplicationController
  before_action :set_my_resource, only: [:show, :edit, :update, :destroy]

  # GET /my_resources
  # GET /my_resources.json
  def index
    @my_resources = MyResource.all
  end

  # GET /my_resources/1
  # GET /my_resources/1.json
  def show
  end

  # GET /my_resources/new
  def new
    @my_resource = MyResource.new
  end

  # GET /my_resources/1/edit
  def edit
  end

  # POST /my_resources
  # POST /my_resources.json
  def create
    @my_resource = MyResource.new(my_resource_params)

    respond_to do |format|
      if @my_resource.save
        format.html { redirect_to @my_resource, notice: 'My resource was successfully created.' }
        format.json { render :show, status: :created, location: @my_resource }
      else
        format.html { render :new }
        format.json { render json: @my_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_resources/1
  # PATCH/PUT /my_resources/1.json
  def update
    respond_to do |format|
      if @my_resource.update(my_resource_params)
        format.html { redirect_to @my_resource, notice: 'My resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_resource }
      else
        format.html { render :edit }
        format.json { render json: @my_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_resources/1
  # DELETE /my_resources/1.json
  def destroy
    @my_resource.destroy
    respond_to do |format|
      format.html { redirect_to my_resources_url, notice: 'My resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_resource
      @my_resource = MyResource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_resource_params
      params.require(:my_resource).permit(:title, :description, :status)
    end
end
