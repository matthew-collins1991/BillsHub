
    class UtilitySerializer < ActiveModel::Serializer
    attributes :id, :company_id, :utility_type, :renewal_date, :start_date, :payment_type, :payment_freq, :active, :bills
    has_many :bills
    belongs_to :user
end
