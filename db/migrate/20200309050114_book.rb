class Book < ActiveRecord::Migration[5.2]
  def change
    add_column  :books,:image_url, :text
  end
end
