class CreateTrackerUbications < ActiveRecord::Migration[6.1]
    def change
      create_table :tracker_ubications do |t|
        t.references :project, null: false, foreign_key: true
        t.references :issue, foreign_key: true
        t.references :user, null: false, foreign_key: true
        t.decimal :latitude, precision: 10, scale: 6
        t.decimal :longitude, precision: 10, scale: 6
        t.string :event_type # Estado, Nota, Creación, etc.
        t.text :notes
        t.timestamps
      end
    end
  end
  