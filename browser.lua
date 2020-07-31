term.clear()
term.setCursorPos(1, 1)

write("Enter URL: ")
local URL = read()
http.request(URL)

while true do
  local event, url, handle = os.pullEvent()

  if event == "http_failure" then
    printError("Failed to make HTTP GET request:")

    -- Here, handle is the error.
    printError(handle)
    break
  elseif event == "http_success" then
    print(handle.readAll())
    handle.close()
    break
  end
end
