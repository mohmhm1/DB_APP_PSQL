class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :site
      t.string :location
      t.string :contacts
      t.string :email
      t.date :installed
      t.string :FSE
      t.date :PQandTraining
      t.string :FAS
      t.string :TrainedOn
      t.string :SxSerialNumber
      t.string :MappingTool
      t.string :RGQSN
      t.string :RgqSoftware
      t.string :SAReporter
      t.string :AssayPackage
      t.boolean :NGS
      t.string :NGSassay
      t.string :NGSSXSN
      t.string :ST401i
      t.string :ST401e
      t.string :SQ301
      t.string :SQSuite
      t.string :SQreporter
      t.date :NGSInstall
      t.string :NGSFSE
      t.date :NGSPQandTraining
      t.string :FAS

      t.timestamps null: false
    end
  end
end
