get '/' do
  erb :index
end

get '/:word' do

  @a = Word.anagrams(params[:word])

  erb :index

end

post '/anagram' do
  # puts "after post anagram"
  # puts "#{Word.anagrams} #{params[:user_input]}"
  @word = params[:user_input]

  redirect to "/#{@word}"
end