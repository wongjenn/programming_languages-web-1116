def reformat_languages(languages)
  new_hash = Hash.new
  languages.each do |style, lang|
    lang.each do |lang, type|
      if new_hash[lang.to_sym] == nil
        new_hash[lang.to_sym] = Hash.new {|h, k| h[k] = []}
        new_hash[lang.to_sym][:type] = type[:type]
        new_hash[lang.to_sym][:style].push(style)
      else
        new_hash[lang.to_sym][:type] = type[:type]
        new_hash[lang.to_sym][:style].push(style)
      end
    end
  end

  new_hash
end
