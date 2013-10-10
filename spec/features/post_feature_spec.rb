require 'spec_helper'

describe 'posts' do

	def create_post_with_title(my_title)
		Post.create(title: my_title)
	end


	describe 'the posts index page' do

		# context 'when there are no posts' do

		# 	it 'should display a message saying "No posts"' do
		# 	end

		# end

		it 'should show a list of posts' do
			# setting up our test
			create_post_with_title('The Top 10 Cafes in London')

			visit '/posts'
			expect(page).to have_content 'The Top 10 Cafes in London'
		end

	end

end