class CountElements
  attr_reader :args

  def initialize(args)
    @args = args
  end

  def perform
    args.tally
    # args.each_with_object(Hash.new(0)) { |w, counter| counter[w] += 1 } - can be used with ruby < 2.7
  end
end
