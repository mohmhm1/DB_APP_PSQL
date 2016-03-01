class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.date :date_of_service
      t.string :customer
      t.text :complaint
      t.date :resolved

      t.timestamps null: false
    end
  end
end
