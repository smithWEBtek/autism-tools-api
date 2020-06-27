class Tagging < ApplicationRecord
  validate :has_one_model?
  belongs_to :tag
  belongs_to :board, optional: true
  belongs_to :resource, optional: true
  belongs_to :diet, optional: true
  belongs_to :meal, optional: true
  belongs_to :recipe, optional: true
  belongs_to :document, optional: true
  belongs_to :treatment, optional: true
  belongs_to :step, optional: true
  belongs_to :medication, optional: true
  belongs_to :supplement, optional: true
  belongs_to :playlist, optional: true
  belongs_to :event, optional: true

  def has_one_model?
    board || resource || diet || meal || recipe || document || treatment || step || medication || supplement || playlist || event ? true : errors.add(:has_model?, 'tagging must have tagged model instance')
    
  end
end
