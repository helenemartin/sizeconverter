class ConversionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index; end

  def create
    @result = SizeConverter.new.perform(from: params[:from],
                                        size: params[:size], to: params[:to])
    respond_to do |format|
      format.html { render :result }
      format.json { render json: @result }
    end

  rescue StandardError => e
    respond_to do |format|
      format.html { render html: 'Illegal size or input' }
      format.json { render json: { error: e.message }, status: 500 }
    end
  end
end
