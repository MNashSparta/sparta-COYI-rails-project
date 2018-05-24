class ResourcesController < ApplicationController
  before_action :authenticate_user!
  def level
    authorize :resource, :level?
  end
end
