class FooController < ApplicationController
  def index
  end

  def bad

    request.query_parameters

    render plain: <<~MSG
      Ruby Version:
      #{RUBY_VERSION}

      Rails Version:
      #{Rails.version} @ https://github.com/rails/rails/tree/#{Gem.loaded_specs["rails"].full_gem_path.last(12)}

      Rack: #{Rack.release}

      Params:
      #{params}

      Query params:
      #{request.query_parameters}

      Format:
      #{request.format}
    MSG
  end
end
