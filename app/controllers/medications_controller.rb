class MedicationsController < ApplicationController
  def index
    medications = Medication.all

    render json: medications.as_json
  end

  def show
    id = params["id"]
    medication = Medication.find(id)

    render json: medication.as_json
  end

  def create
    medication = Medication.new(name: params["name"], amount: params["amount"], measurement: params["measurement"], frequency: params["frequency"])

    if medication.save
      render json: medication.as_json
    else
      render json: { errors: medication.errors.full_messages }, status: 422
    end
  end

  def update
    id = params["id"]
    medication = Medication.find(id)

    medication.name = params["name"] || medication.name
    medication.amount = params["amount"] || medication.amount
    medication.measurement = params["measurement"] || medication.measurement
    medication.frequency = params["frequency"] || medication.frequency

    medication.save

    render json: medication.as_json
  end

  def destroy
    id = params["id"]
    medication = Medication.find(id)

    medication.destroy
    render json: { message: "Your medications was removed!" }
  end
end
