class Question < ActiveRecord::Base

  has_many :answers

  def as_json(options={})
    super(options.merge(:include => [ :answers ], :except => [ :user_id, :created_at, :updated_at ]))
  end

end
