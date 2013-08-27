
get '/' do
  @anagram_results = params[:anagram_result]
  # Look in app/views/index.erb
  erb :index
end

post '/anagrams' do
  @anagram_results = Word.gen_ana_res(params[:user_input])
  
  # user_input_word_obj = Word.new(params[:user_input])
  # @anagram_result = user_input_word_obj.gen_ana_res
  erb :index
  # redirect to("?anagrams=#{params[:user_input]}")
end
