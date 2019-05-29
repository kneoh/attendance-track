class SessionTopic < ApplicationRecord
  belongs_to :session
  belongs_to :topic
end
