module ApplicationHelper

    #Returns the title bar on a per-page basis
    def full_title(page_title)
        base_title = "MicroTweet"
        if page_title.empty?
            base_title
        else
            "#{base_title} | #{page_title}"
        end
    end
end
