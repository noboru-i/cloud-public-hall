class Hall < ActiveRecord::Base
  # TODO きれいじゃない
  scope :include_name, ->(keyword) { where('name LIKE ?', "%#{keyword}%") if keyword.present? }
  scope :include_message, ->(keyword) { where('message LIKE ?', "%#{keyword}%") if keyword.present? }
  scope :include_place, ->(place) { where('address1 = ? or address2 = ? or address3 LIKE ?', place, place, "%#{place}%") if place.present? }

  def address
    address1 + address2 + address3
  end

  def self.search(keyword, place)
    logger.debug 'self.search'
    self.include_name(keyword)
      .include_message(keyword)
      .include_place(place)
  end
end
