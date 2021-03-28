class PartnerSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :password_confirmation
  has_many :projects
end
