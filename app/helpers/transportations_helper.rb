module TransportationsHelper
  def show_ofv
    if Problem.first.ofv != nil
      `Objective function value: + ` + Problem.first.ofv.to_s
    end
  end
end
