class Tag < ActiveRecord::Base

  belongs_to :question

  def as_json(options={})
    if (options.nil?)
      options = {}
    end
    super(options.merge(:except => [ :id, :question_id, :created_at, :updated_at ]))
  end

  def self.random(tag)
    ids = connection.select_all("SELECT id FROM tags WHERE tag = " + tag)
    find(ids[rand(ids.length)]["id"].to_i) unless ids.blank?
  end

end
