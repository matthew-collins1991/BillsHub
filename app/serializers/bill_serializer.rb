
    class BillSerializer < ActiveModel::Serializer
      belongs_to :utility
      attributes :id, :utility_id, :cost, :bill_date
    end
