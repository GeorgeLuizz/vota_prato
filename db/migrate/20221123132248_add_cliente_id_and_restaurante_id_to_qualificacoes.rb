class AddClienteIdAndRestauranteIdToQualificacoes < ActiveRecord::Migration[7.0]
  def change
    add_column :qualificacoes, :cliente_id, :integer
    add_column :qualificacoes, :restaurante_id, :integer
  end
end
