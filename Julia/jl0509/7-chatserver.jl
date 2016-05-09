server = listen(3010)

conn = accept(server)

@spawn while true
  line = readline(conn)
  print(line)
end

while true
  line2 = readline(STDIN)
  ismatch(r"^q", line2) && break

  write(conn,line2)
end

close(conn)
println("server finished")
