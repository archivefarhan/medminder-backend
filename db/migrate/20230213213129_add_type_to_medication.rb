class AddTypeToMedication < ActiveRecord::Migration[7.0]
  def change
    add_column :medications, :type, :string
  end
end
