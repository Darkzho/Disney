class RemoveMovieIdFromGenres < ActiveRecord::Migration[6.0]
  def change
    remove_column :genres, :movie_id
  end
end
