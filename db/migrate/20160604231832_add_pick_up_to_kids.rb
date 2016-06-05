class AddPickUpToKids < ActiveRecord::Migration
  def change
    add_column :kids, :pick_up, :string
  end
end
