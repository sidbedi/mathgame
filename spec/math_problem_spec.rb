require "math_problem"

describe MathProblem do
	describe ".add" do
		context "given an empty string" do
			it "returns zero" do
				expect(MathProblem.add("")).to eql(0)
			end
		end
	end
end
