class AddPhotoUrlToFrogs < ActiveRecord::Migration[7.1]
  def change
    add_column :frogs, :photo_url, :string
  end
end
