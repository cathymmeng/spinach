module Spinach
  # This class represents the exception raised when Spinach can't find a class
  # for a feature.
  #
  class FeatureStepsNotFoundException < StandardError
    # @param [Array] options
    #   An array consisting of the missing class and the feature.
    #
    # @api pulic
    def initialize(options)
      @missing_class, @feature = options
    end

    # @return [String]
    #   A custom message when feature steps aren't found.
    #
    # @api public
    def message
      "Could not find steps for `#{@feature}` feature"
    end

    attr_reader :missing_class
  end

  # This class represents the exception raised when Spinach can't find a step
  # for a {FeatureSteps}.
  #
  class StepNotDefinedException < StandardError
    attr_reader :feature, :step

    # @param [Hash] step
    #   The missing step.
    #
    # @api pulic
    def initialize(step)
      @step = step
    end

    # @return [String]
    #   A custom message when scenario steps aren't found.
    #
    # @api public
    def message
      "Step '#{@step}' not found"
    end
  end
end