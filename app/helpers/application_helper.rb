module ApplicationHelper

  def self.json_errors(obj)
    { errors: obj.errors.full_messages }.to_json
  end
end
