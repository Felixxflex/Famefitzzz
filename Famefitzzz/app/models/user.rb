class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  ratyrate_rater
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         def self.from_omniauth(auth)
          where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
            user.email = auth.info.email
            user.password = Devise.friendly_token[0, 20]
            user.full_name = auth.info.name
            # If you are using confirmable and the provider(s) you use validate emails,
            # uncomment the line below to skip the confirmation emails.
            # user.skip_confirmation!
          end
        end
      
        def self.new_with_session(params, session)
          super.tap do |user|
            if data = session["devise.github"] && session["devise.github_data"]["extra"]["raw_info"]
              user.email = data["email"] if user.email.blank?
            end
          end
        end
      
end