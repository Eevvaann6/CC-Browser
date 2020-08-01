term.clear()
term.setCursorPos(1, 1)

write("Enter URL: ")
local URL = read()
local HTML = http.request(URL)
print(HTML)

local site = table.concat({
    "https://raw.githubusercontent.com",
    URL,
    URL,
}, " ")

shell.run("wget ", site)
