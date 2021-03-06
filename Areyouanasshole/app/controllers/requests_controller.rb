class RequestsController < ApplicationController

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to @request
    else
      render :new
    end
  end

  def show

    @request = Request.find(params[:id])
    @api = Request.gogogo(@request.request.to_s)
    
  end

  private

  def request_params
    params.require(:request).permit(:request)

  end

end
