class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :date
      t.boolean :released
      t.time :duration
      t.timestamps
    end
  end
end
