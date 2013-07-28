class EmberController < ApplicationController
  respond_to :html

  def index
    render layout: false
  end
end
