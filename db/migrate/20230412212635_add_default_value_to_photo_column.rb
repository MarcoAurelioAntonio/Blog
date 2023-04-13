class AddDefaultValueToPhotoColumn < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :photo, from: nil, to: 'https://cdn.pixabay.com/photo/2012/04/13/21/07/user-33638_960_720.png'
  end
end
