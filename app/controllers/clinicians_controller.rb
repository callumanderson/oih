# Controller for Clincians
class CliniciansController < ApplicationController
  def index
    @clinicians = Clinician.all
    render 'clinicians/index', status: 200, formats: [:html]
  end

  def show
    @clinician = Clinician.find(params[:id])
  end

  def new
    @clinician = Clinician.new
  end

  def create
    @clinician = Clinician.new(clinician_params)
    if @clinician.save
      redirect_to @clinician
    else
      render 'new'
    end
  end

  private

  def clinician_params
    params[:clinician].permit(:name, :email, :location, :specialism)
  end
end
