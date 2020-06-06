class TestsController < ApplicationController


	def new
		@test = Test.new
	end

	def create
		@test = Test.new(test_params)
		@test.created_by = Teacher.first.id
		@test.questions.build(question: params["test"]["question"]["question"])
		@test.save
	end

	private

	def test_params
    params.require(:test).permit(:name)
  end

end
