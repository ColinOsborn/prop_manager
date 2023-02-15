class ViolationsController < ApplicationController
  before_action :set_violation, only: %i[ show edit update destroy ]

  def index
  end

  def new
    @violation = Violation.new
  end

  def create
    @violation = Violation.create!(violation_params)
  end

  def edit
  end

  def show
  end

  private

  def set_violation
    @violation = Violation.find(params[:id])
  end

  def violation_params
    params.require(:violation).permit(:title, :description, :image)
  end
end