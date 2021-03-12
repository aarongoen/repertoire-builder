class AddUrlToPieces < ActiveRecord::Migration[6.1]
  def change
    add_column :pieces, :url, :string
  end
end
