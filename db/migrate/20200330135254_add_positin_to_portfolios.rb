class AddPositinToPortfolios < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :position, :integer
  end
end
