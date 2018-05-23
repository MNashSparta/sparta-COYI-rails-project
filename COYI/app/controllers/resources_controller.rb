class ResourcesController < ApplicationController


  def level
    authorize :resource, :show?
  end

end
