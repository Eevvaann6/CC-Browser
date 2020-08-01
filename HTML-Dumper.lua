term.clear()
term.setCursorPos(1, 1)

write("Enter URL: ")
local URL = read()
local HTML = http.request(URL)
print(HTML)
shell.run("wget ", URL .. " ", URL)
