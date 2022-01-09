class ImcSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :height, :weight, :imc, :classification, :obesity
end
