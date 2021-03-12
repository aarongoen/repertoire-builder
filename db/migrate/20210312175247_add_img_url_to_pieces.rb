class AddImgUrlToPieces < ActiveRecord::Migration[6.1]
  def change
    add_column :pieces, :img_url, :string
  end
end
