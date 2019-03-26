class ChangeArtistsBioDataTypeToArtists < ActiveRecord::Migration[5.0]
  def change
    change_column :artists, :bio, :text
  end
end
