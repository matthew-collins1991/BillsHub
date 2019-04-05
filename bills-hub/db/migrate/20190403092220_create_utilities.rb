class CreateUtilities < ActiveRecord::Migration[5.2]
  def change
    create_table :utilities do |t|
      t.references :company, foreign_key: true
      t.references :user, foreign_key: true
      t.string :utility_type
      t.datetime :start_date
      t.datetime :renewal_date
      t.string :payment_type
      t.string :payment_freq
      t.boolean :active

      t.timestamps
    end
  end
end
