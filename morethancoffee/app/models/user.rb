class User < ActiveRecord::Base
  has_many :attendances
  has_many :events, through: :attendances

	before_save { self.email = email.downcase }
	before_create :create_remember_token
	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
    								uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, length: { minimum: 6 }

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def attending?(event)
    attendances.find_by(event_id: event.id)
  end

  def attending!(event)
    attendances.create!(event_id: event.id)
  end

  def notattending!(event)
    attendances.find_by(event_id: event.id).destroy
  end

  # def attending
  #   @title = "Attending"
  #   @user = User.find(params[:id])
  #   @events = @user.events
  #   render 'show_follow'
  # end

  # def followers
  #   @title = "Followers"
  #   @user = User.find(params[:id])
  #   @users = @user.followers.paginate(page: params[:page])
  #   render 'show_follow'
  # end

  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end
end


