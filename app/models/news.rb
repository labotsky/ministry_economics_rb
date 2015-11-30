class News < ActiveRecord::Base
  scope :last_news, -> {order(:created_at).take(5)}
end
