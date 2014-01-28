module DiscourseApi
  module API
    module Users
      def toggle_avatar(username, use_uploaded_avatar)
        put("/users/#{username}/preferences/avatar/toggle", { use_uploaded_avatar: use_uploaded_avatar })
      end

      def user(username, params={})
        response = get("/users/#{username}", params)
        response[:body]['user']
      end

      def update_avatar(username, file)
        put("/users/#{username}/preferences/avatar", { file: file })
      end

      def update_email(username, email)
        put("/users/#{username}/preferences/email", { email: email })
      end

      def update_user(username, params={})
        put("/users/#{username}", params)
      end

      def update_username(username, new_username)
        put("/users/#{username}/preferences/username", { new_username: new_username })
      end
    end
  end
end
