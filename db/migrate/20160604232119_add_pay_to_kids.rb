class AddPayToKids < ActiveRecord::Migration
  def change
    add_column :kids, :pay, :integer
  end
end
