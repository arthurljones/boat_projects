class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.decimal :hours_estimate
      t.string :notes
      t.int :helpers_needed
      t.int :liveabord_priority
      t.int :daysail_priority
      t.int :cruising_priority
      t.boolean :completed
      t.boolean :obsolete

      t.timestamps
    end
  end
end
