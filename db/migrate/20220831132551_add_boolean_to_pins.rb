class AddBooleanToPins < ActiveRecord::Migration[7.0]
  def change
    add_column :pins, :pinned, :boolean, default: false
  end
end
