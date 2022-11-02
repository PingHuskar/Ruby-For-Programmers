h1 = Hash.new
h2 = Hash.new("default")

# h1[1] = 'one'
# h1[2] = 'two'
# p h1[1]
# p h1[2]
# p h1[3]
# p h2[3]

h1['a'] = 5000
h1['b'] = ['a','b','c']

p h1
p h1['b']

h1 = {1 => 'hello',2 => 'goodbye'}
p h1[2]

system("clear")

h3 = {
    'room1' => 'The Tresure Room',
    'room2' => 'The Throne Room',
    'loc1' => 'A Forest Glade',
    'loc2' => 'A Mountain Stream'
}
h3['room1'] = 'You are in a dark room'
p h3
h3.delete('room1')
puts '-------------'
p h3
puts '-------------'
p h3.has_key?('room1')
p h3.has_key?('room2')
p h3.keys
p h3.values

system("clear")

multihash = {
    'name' => 'Multi-Hash',
    'array' => ['one','two','three','four'],
    'nested array' => ["I", [
        "wandered", "lonely", "as", [
            "a", "cloud"
        ]
    ]],
    'nested hash' => {
        'a' => 'hi',
        'b' => 'goodbye',
    }
}
p multihash.to_a
p multihash['array']
p multihash['array'][2]
p multihash['nested hash']
multihash.clear
p multihash
p multihash.to_a