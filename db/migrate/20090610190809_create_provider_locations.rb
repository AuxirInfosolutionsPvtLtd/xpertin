class CreateProviderLocations < ActiveRecord::Migration
  def self.up
    create_table :provider_locations do |t|
	   
	  t.references :user 
      t.column :country,            :string,  :limit => 40	
	  t.column :addressline1,       :string,  :limit => 80	
	  t.column :addressline2,       :string,  :limit => 80
	  t.column :postalcode,         :integer, :limit => 6
	  t.column :city,               :string,  :limit => 40
	  t.column :phone,              :string,  :limit => 20

    end
	
  end

  def self.down
    drop_table :provider_locations
  end
end
