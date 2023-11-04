class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show]

  def index
    @appointments = Appointment.paginate(page: params[:page], per_page: 6).order('sort ASC')
  end

  def show
    @others = Appointment.paginate(page: params[:page], per_page: 4).order('sort ASC')
  end

  private

  def set_appointment
    @appointment = appointment.find(params[:id])
  end
end
