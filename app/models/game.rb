class Game < ActiveRecord::Base
include RapGenius::Client
belongs_to :user

end
