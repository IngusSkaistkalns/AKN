class AddMediaTypeToFotos < ActiveRecord::Migration[5.0]
  def up
    add_column :fotos, :media_type, :string
  end

  def down
    remove_column :fotos, :media_type
  end
end
