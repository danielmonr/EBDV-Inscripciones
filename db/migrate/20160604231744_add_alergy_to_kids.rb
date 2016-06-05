class AddAlergyToKids < ActiveRecord::Migration
  def change
    add_column :kids, :alergy, :string
  end
end
