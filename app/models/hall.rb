class Hall < ActiveRecord::Base
  def address
    address1 + address2 + address3
  end
end
