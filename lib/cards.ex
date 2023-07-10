defmodule Cards do

 def create_deck do

    suits = ["Clubs","Diamonds","Hearts","Spades"]
    values = ["Ace","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten","Jack","Queen","King"]

   for suit <- suits, value <- values do
     "#{value} of #{suit}"
   end


 end

def shuffle(deck) do
  Enum.shuffle(deck)
end


def contains?(deck, card) do
  Enum.member?(deck, card)
end

def deal(deck,hand_size) do
  Enum.split(deck,hand_size)
end

def save(deck, filename) do
  binary = :erlang.term_to_binary(deck)
  File.write(filename, binary)
end


def load(filename) do
  {status, binary} = File.read(filename)
  :erlang.binary_to_term(binary)
end

#Cap - 21
end
