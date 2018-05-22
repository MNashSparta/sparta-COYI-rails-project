class ResourcesController < ApplicationController


  def level_2
    authorize :resource, :show?
  end

end
