class ProblemController < ApplicationController
  def solve
    puts 'Optimization is started.'
    
    respond_to do |format|
      if Problem.solve_with_gams == true
        format.html { redirect_to root_url, notice: 'Optimization started' }
      else
        format.html { redirect_to root_url, notice: 'Matrix is incomplete' }
        
      end
    end
  end

  def read
    Problem.read_results
    respond_to do |format|
      format.html do
        redirect_to transportations_path, notice: 'Results saved to database.'
      end
    end
  end
end
