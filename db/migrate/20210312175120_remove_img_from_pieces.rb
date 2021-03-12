class RemoveImgFromPieces < ActiveRecord::Migration[6.1]
  def change
    remove_column :pieces, :img, :string
  end
end
