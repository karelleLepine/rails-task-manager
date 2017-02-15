class AddAuthorToTask < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :author, :string
  end
end
