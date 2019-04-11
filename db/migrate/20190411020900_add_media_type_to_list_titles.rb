class AddMediaTypeToListTitles < ActiveRecord::Migration[5.2]
  def change
    add_column :list_titles, :media_type, :string
  end
end
