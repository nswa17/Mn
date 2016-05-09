server = listen(2009)

conn = accept(server)

while true
  line = readline(conn)
  print(line)
  write(conn,line)
end

close(conn)
println("server finished")
