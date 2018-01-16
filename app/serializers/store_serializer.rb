class StoreSerializer < ActiveModel::Serializer
  attributes :name, :hours, :lat, :long

  def hours
    "#{object.opening_time} - #{object.closing_time}"
  end

  def lat
    object.latitude
  end

  def long
    object.longitude
  end

end