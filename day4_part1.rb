# Mining is a record-keeping service.[note 10] Miners keep the block chain consistent, complete, and unalterable by repeatedly verifying and collecting newly broadcast transactions into a new group of transactions called a block. A new block contains information that "chains" it to the previous block thus giving the block chain its name. It is a cryptographic hash of the previous block, using the SHA-256 hashing algorithm.[10]:ch. 7
# In order to be accepted by the rest of the network, a new block must contain a so-called proof-of-work. The proof-of-work requires miners to find a number called a nonce, such that when the block content is hashed along with the nonce, the result is numerically smaller than the network's difficulty target.[10]:ch. 8 This proof is easy for any node in the network to verify, but extremely time-consuming to generate, as for a secure cryptographic hash, miners must try many different nonce values (usually the sequence of tested values is 0, 1, 2, 3, …[10]:ch. 8) before meeting the difficulty target.

require 'digest'

file_path = File.expand_path('../day4_input.txt', __FILE__)
input     = File.read(file_path)

number = 0

while true
  digest = Digest::MD5.hexdigest("#{input}#{number}")
  break if digest =~ /\A00000/
  number += 1
end

puts number
