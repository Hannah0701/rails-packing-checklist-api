class CreateHolidays < ActiveRecord::Migration[7.0]
  def change
    create_table :holidays do |t|
      t.string :destination
      t.integer :num_people
      t.text :people, array: true, default: []
      t.string :holiday_type
      t.integer :duration

      t.timestamps
    end
  end
end
