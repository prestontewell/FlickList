class CreateListTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :list_titles do |t|
      t.integer :list_id
      t.integer :title_id

      t.timestamps
    end
  end
end
