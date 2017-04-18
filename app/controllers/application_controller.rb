class ApplicationController < ActionController::API
	def api_error(opts)
    render json: { status: false, msg: opts }
  end

  def api_success(opts)
    render json: { status: true, msg: opts }
  end
end
