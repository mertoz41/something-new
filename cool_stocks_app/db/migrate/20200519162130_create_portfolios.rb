class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.integer :stock_id
      t.integer :investor_id

      t.timestamps
    end
  end
end
