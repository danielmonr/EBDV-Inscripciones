class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcomes do |t|
      t.float :amount
      t.string :owner
      t.string :description

      t.timestamps null: false
    end
  end
end
