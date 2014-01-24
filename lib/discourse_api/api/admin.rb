module DiscourseApi
  module API
    module Admin
      def admin_api(params={})
        response = get('/admin/api', params)
        response[:body]
      end

      def admin_users_list_active(params={})
        response = get('admin/users/list/active', params)
        response[:body]
      end
    end
  end
end
