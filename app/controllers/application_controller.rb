class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def healthcheck
      render json: { message: 'Marketplace Service is healthy' }, status: 200
  end
end
