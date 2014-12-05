class Player < ActiveRecord::Base
  has_many :characters
  validates :name, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }
  include BCrypt
  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def create
    @player = Player.new(params[:player])
    @player.password = params[:password]
    @player.save!
  end

  def login
    @player = Player.find_by_email(params[:email])
    if @player.password == params[:password]
      give_token
    else
      redirect_to home_url
    end
  end
end
