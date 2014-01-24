module DiscourseApi
  module API
    module Topics
      def hot_topics(params={})
        response = get('/hot.json', params)
        response[:body]['topic_list']['topics']
      end

      def invite_user_to_topic(user_email, topic_id)
        params = { email: user_email, topic_id: topic_id }
        post "/t/#{topic_id}/invite.json", params
      end

      def latest_topics(params={})
        response = get('/latest.json', params)
        response[:body]['topic_list']['topics']
      end

      def new_topics(params={})
        response = get("/new.json", params)
        response[:body]['topic_list']['topics']
      end

      def topic(id, params={})
        response = get("/t/#{id}.json", params)
        response[:body]
      end

      def topics_by(username, params={})
        response = get("/topics/created-by/#{username}.json", params)
        response[:body]['topic_list']['topics']
      end
    end
  end
end
