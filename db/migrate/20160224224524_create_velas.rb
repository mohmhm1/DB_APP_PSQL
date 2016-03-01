class CreateVelas < ActiveRecord::Migration
  def change
    create_table :velas do |t|
      t.date :Date
      t.string :Via
      t.string :person
      t.string :Organization
      t.string :FAS
      t.string :FSE
      t.string :code
      t.string :Instrument
      t.text :Description
      t.text :Diagnosis
      t.boolean :resolved
      t.date :closed

      t.timestamps null: false
    end
  end
end
