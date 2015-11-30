class Menu < ActiveRecord::Base
  include Translit
  before_validation :generate_slug
  validates :slug, uniqueness:true, presence:true

  scope :header, -> { where(state: 0) }
  scope :main, -> { where(state: 1) }
  has_ancestry

  def to_param
    slug
  end

  def generate_slug
    url = Translit.convert(name, :english)
    self.slug ||= url.parameterize
  end
end
