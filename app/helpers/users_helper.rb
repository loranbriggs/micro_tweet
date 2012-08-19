module UsersHelper

    # Returns the Gravatar (http://gravatar.com/) for the given user.
    def gravatar_for(user, options = { :size => 100,
                                       :default => "retro" })
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        size = options[:size]
        default =    options[:default]
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=#{default}"
        image_tag(gravatar_url, alt: user.name, class: 'gravatar')
    end
end
