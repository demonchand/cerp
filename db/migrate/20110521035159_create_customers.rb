class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :acid
      t.string :given_names
      t.string :father_last_name
      t.string :mother_last_name
      t.string :street
      t.string :exterior_number
      t.string :interior_number
      t.string :colony
      t.string :city
      t.string :state
      t.string :country
      t.string :zip_code
      t.string :cell_phone
      t.string :id_number
      t.string :occupation

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
