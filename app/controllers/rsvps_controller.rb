class RsvpsController < ApplicationController
  before_action :set_rsvp, only: %i[show edit update destroy]

  # GET /rsvps
  def index
    @q = Rsvp.ransack(params[:q])
    @rsvps = @q.result(distinct: true).includes(:user,
                                                :event).page(params[:page]).per(10)
  end

  # GET /rsvps/1
  def show; end

  # GET /rsvps/new
  def new
    @rsvp = Rsvp.new
  end

  # GET /rsvps/1/edit
  def edit; end

  # POST /rsvps
  def create
    @rsvp = Rsvp.new(rsvp_params)

    if @rsvp.save
      message = "Rsvp was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @rsvp, notice: message
      end
    else
      render :new
    end
  end

  # PATCH/PUT /rsvps/1
  def update
    if @rsvp.update(rsvp_params)
      redirect_to @rsvp, notice: "Rsvp was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /rsvps/1
  def destroy
    @rsvp.destroy
    message = "Rsvp was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to rsvps_url, notice: message
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_rsvp
    @rsvp = Rsvp.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def rsvp_params
    params.require(:rsvp).permit(:users_id, :events_id, :response)
  end
end
