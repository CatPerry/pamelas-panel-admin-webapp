class AddSlugToCohorts < ActiveRecord::Migration[5.2]
  def change
    add_column :cohorts, :slug, :string
    add_index :cohorts, :slug, unique: true
  end
end
