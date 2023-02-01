class MedicationsController < ApplicationController
  def index
    medications = Medication.all

    render json: medications.as_json
  end
end
