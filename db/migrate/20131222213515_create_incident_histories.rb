class CreateIncidentHistories < ActiveRecord::Migration
  def change
    create_table :incident_histories do |t|
      t.string :hp_ref
      t.text :description
      t.text :resolution
      t.timestamp :date
      t.string :status
      t.references :system, index: true

      t.timestamps
    end
  end
end
