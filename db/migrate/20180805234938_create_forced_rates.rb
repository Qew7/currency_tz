class CreateForcedRates < ActiveRecord::Migration[5.1]
  def change
    create_table :forced_rates do |t|
      t.string :value
      t.datetime :last_to

      t.timestamps
    end
  end
end
