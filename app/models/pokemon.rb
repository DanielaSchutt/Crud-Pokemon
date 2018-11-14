class Pokemon < ApplicationRecord
    belongs_to :tipo
    belongs_to :fase2
    belongs_to :fase3
    belongs_to :vantagem
    belongs_to :fraqueza
end
