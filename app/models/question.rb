class Question < ActiveRecord::Base

  has_many :tags

  def as_json(options={})
    if (options.nil?)
      options = {}
    end
    super(options.merge(:include => [ :tags ], :except => [ :user_id, :created_at, :updated_at ]))
  end

  def self.random
    ids = connection.select_all("SELECT id FROM questions")
    find(ids[rand(ids.length)]["id"].to_i) unless ids.blank?
  end

end
