class Task < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true   # ← هذا يخلي المهمة غير صالحة بدون وصف
end
