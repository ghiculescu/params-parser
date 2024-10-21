class FooController < ApplicationController
  def index
  end

  def bad
    render plain: <<~MSG
      Ruby Version:
      #{RUBY_VERSION}

      Rails Version:
      #{Rails.version} @ https://github.com/rails/rails/tree/#{Gem.loaded_specs["rails"].full_gem_path.last(12)}

      Params:
      #{params}

      Format:
      #{request.format}
    MSG
  end
end
