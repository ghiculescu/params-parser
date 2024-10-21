class FooController < ApplicationController
  def index
    render plain: params.to_s
  end
end
