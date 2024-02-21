def domain_name(url)
  uri = url.start_with?("http") ?  URI.parse(url) : URI.parse("http://" + url)
  host = uri.host.start_with?("www") ? uri.host[4..-1] : uri.host
  host.split(".", 2)[0]
end
