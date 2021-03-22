class Project < ApplicationRecord
    belongs_to :partner
    belongs_to :employee
end
