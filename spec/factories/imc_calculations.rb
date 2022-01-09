FactoryBot.define do
  factory :imc_calculation do
    imc { nil }
    weight { 1.5 }
    height { 1.5 }
    imc { 1.5 }
    classification { "MyString" }
    obesity { 1 }
  end
end
