require "yaml"

f = File.open("friends.yml", "w")

YAML.dump(["fred","bert","mary"],f)
f.close

File.open('morefriends.yml', "w"){ |friendsfile|
    YAML.dump(["sally","agnes", "john"],friendsfile)
}

File.open('morefriends.yml'){ |f|
    $arr = YAML.load(f)
}

myfriends = YAML.load(File.open("friends.yml"))
morefriends = YAML.load(File.open("morefriends.yml"))
puts myfriends
puts
puts morefriends
p $arr

system("clear")
puts "hello world".to_yaml
puts [1,2,3,4].to_yaml

system("clear")
arr = [1,[2,3,[4,5,6,[7,8,9,10],"end3"],"end2"],"end1"].to_yaml
puts arr

system("clear")
f = File.open("friends.sav", "w")
Marshal.dump(["fred","bert","mary"],f)
f.close

File.open("morefriends.sav","w"){|friendsfile|
    Marshal.dump(["sally","agnes", "john"],friendsfile)
}

File.open("morefriends.sav"){ |f|
    $arr = Marshal.load(f)
}

myfriends = Marshal.load(File.open("friends.sav"))
morefriends = Marshal.load(File.open("morefriends.sav"))

p myfriends
p morefriends
p $arr