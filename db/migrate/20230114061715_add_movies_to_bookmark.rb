class AddMoviesToBookmark < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookmarks, :movie, foreign_key: true, null: false
  end
end
