class CreateUtilities < ActiveRecord::Migration[5.2]
  def change
    create_table :utilities do |t|
      t.string :name
      t.string :type
      t.datetime :start_date
      t.datetime :renewal_date

      t.timestamps
    end
  end
end
