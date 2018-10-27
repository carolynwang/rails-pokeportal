class Pokemon < ApplicationRecord
  belongs_to :trainer, optional: true;
  validates :name, presence: true, uniqueness: { case_sensitive: false };
end
