class AddListsToBookmark < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookmarks, :list, foreign_key: true, null: false
  end
end
