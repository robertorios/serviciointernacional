class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
	  t.string  :name
      t.string  :label
      t.text    :value
            # t.timestamps
    end
  end
end
