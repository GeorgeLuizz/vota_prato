class Prato < ApplicationRecord
    validates_presence_of :nome, message: " - deve ser preenchido"
    validates_uniqueness_of :nome, message: " - nome já cadastrado"
    validate :validate_presence_of_more_than_one_restaurate
    
    has_and_belong_to_many :restaurantes

end
private
def validate_presence_of_more_than_one_restaurate
    errors.add("restaurantes", "deve haver ao menos um restaurante") if restaurantes.empty?
end