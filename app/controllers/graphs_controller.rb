class GraphsController < ApplicationController
  def index
    @states = State.all
  end
end
