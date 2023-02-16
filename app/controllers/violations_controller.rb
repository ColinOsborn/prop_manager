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
        format.json { render json: @violation.errors, status: :unprocessable_entity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render :new, status: :ok, location: @violation }
      end
    end
  end

  def edit
  end

  def show
  end

  def update
    respond_to do |format|
      if @violation.update(violation_params)
        format.html { redirect_to @violation, notice: 'violation was successfully updated.' }
        format.json { render :show, status: :ok, location: @violation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @violation.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_violation
    @violation = Violation.find(params[:id])
  end

  def violation_params
    params.require(:violation).permit(:title, :description, :image)
  end
end