class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :name
      t.string :lastf
      t.string :lastm
      t.integer :age
      t.string :nmother
      t.string :nfather
      t.string :address
      t.integer :phone
      t.integer :exphone
      t.integer :celphone

      t.timestamps null: false
    end
  end
end
