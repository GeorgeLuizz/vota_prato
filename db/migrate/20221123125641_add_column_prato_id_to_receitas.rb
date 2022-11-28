class AddColumnPratoIdToReceitas < ActiveRecord::Migration[7.0]
  def change
    add_column :receitas, :prato_id, :integer
  end
end
