using JSON

ID = "server0"
server = listen(3012)

conn = accept(server)

@spawn while true
  line = readline(conn)
  print(line)
end

while true
  line2 = readline(STDIN)
  ismatch(r"^q", line2) && break
  message = [ID, line2]
  write(conn, JSON.json(message))
end

close(conn)
println("server finished")
