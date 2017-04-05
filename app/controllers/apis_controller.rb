class ApisController < ApplicationController
  include ApiConventionsHelper

  def default_serializer_options
     { root: false}
  end

  def api_params
    snakecase_params
  end
end
