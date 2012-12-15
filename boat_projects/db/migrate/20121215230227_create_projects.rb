class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.decimal :hours_estimate
      t.string :notes
      t.integer :helpers_needed
      t.integer :liveabord_priority
      t.integer :daysail_priority
      t.integer :cruising_priority
      t.boolean :completed
      t.boolean :obsolete

      t.timestamps
    end
  end
end
