class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.references :utility, foreign_key: true
      t.string :name
      t.string :url
      t.string :logo

      t.timestamps
    end
  end
end
