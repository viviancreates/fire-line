module ApplicationHelper
    def auto_translate(key)
        t(key, default: key.to_s.humanize)
    end
end
