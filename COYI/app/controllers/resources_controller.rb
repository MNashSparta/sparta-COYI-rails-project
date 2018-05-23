class ResourcesController < ApplicationController
<<<<<<< HEAD
  def index
    
=======
  before_action :authenticate_user!

  def level
    authorize :resource, :level?
>>>>>>> 9dc1c6bf65906ba26e705ff2171713f6c51ad16a
  end


end
