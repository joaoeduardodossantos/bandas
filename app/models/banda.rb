class Banda < ApplicationRecord
    belongs_to :estilo
    validates :quantidade, presence: true
    validates :nome, length: {minimum:5}
end
