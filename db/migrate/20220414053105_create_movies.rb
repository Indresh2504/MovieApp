class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string:name
      t.string:year
      t.string:director
      t.text:description
      t.string:rating
      t.text:reviews
      t.timestamps
    end
  end
end
