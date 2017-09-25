class Page < ApplicationRecord
  extend SimplestStatus
  statuses :draft, :published, :archived
  simple_status :locale, [:english]
end
