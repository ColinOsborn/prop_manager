class ViolationsController < ApplicationController
  before_action :set_violation, only: %i[ show edit update ]

  def index
    @violations = Violation.all.last(5)
  end

  def new
    @violation = Violation.new
  end

  def create
    @violation = Violation.new(violation_params)
    respond_to do |format|
      if @violation.save
        format.html { redirect_to @violation, notice: 'violation was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end

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