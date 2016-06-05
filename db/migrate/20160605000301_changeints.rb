class Changeints < ActiveRecord::Migration
  def change
  	change_column :kids, :celphone, :integer, :limit => 8
  	change_column :kids, :phone, :integer, :limit => 8
  	change_column :kids, :exphone, :integer, :limit => 8
  end
end
