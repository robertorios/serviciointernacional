class CreateContactus < ActiveRecord::Migration
  def change
    create_table :contactus do |t|
      t.string  :name
      t.string  :email
      t.string  :phone
      t.text    :value
      t.timestamps
    end
  end
end
