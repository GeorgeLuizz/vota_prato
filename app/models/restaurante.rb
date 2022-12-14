class Restaurante < ApplicationRecord
    validate :primeira_letra_deve_ser_maiuscula
    validates_presence_of :nome, message: "deve ser preenchido"
    validates_presence_of :endereco, message: "deve ser preenchido"
    validates_presence_of :especialidade, message: "deve ser preenchido"
    
    validates_uniqueness_of :nome, message: "nome da cadastrado"
    validates_uniqueness_of :endereco, message: "endereço já cadastrado"
    validates_uniqueness_of :especialidade, message: "especialidade já declarada"
    has_many :qualificacoes
    has_and_belongs_to_many :pratos

end

private
def primeira_letra_deve_ser_maiuscula
    errors.add(:nome, "primeira letra deve ser maiuscula") unless nome =~ /[A-Z].*/
end