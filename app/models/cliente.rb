class Cliente < ApplicationRecord
    validates_presence_of :nome, message: " - deve ser preenchido"
    validates_uniqueness_of :nome, message: " - nome ja cadastrado"
    validates_numericality_of :idade, greather_than: 0, less_than: 100, message: " - deve ser um número entre 0 e 100"
    has_many :qualificacoes

end
