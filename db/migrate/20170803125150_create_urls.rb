class CreateUrls < ActiveRecord::Migration[4.2]
  def change
  	create_table :urls do |u|
  		u.string :long_url
  		u.string :short_url
  		u.integer :click_count, default: 0
  	end
  end
end
