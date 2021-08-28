class ApplicationController < ActionController::Base
    def healthcheck
        render json: { message: 'Marketplace Service is healthy' }, status: 200
      end
end
