# encoding: utf-8
module Origin
  module Extensions

    # This module contains additional time with zone behaviour.
    module TimeWithZone

      # Evolve the time into a utc time.
      #
      # @example Evolve the time.
      #   time.__evolve_time__
      #
      # @return [ Time ] The time in UTC.
      #
      # @since 1.0.0
      def __evolve_time__
        utc
      end

      module ClassMethods

        # Evolve the object to an date.
        #
        # @example Evolve dates.
        #
        # @example Evolve string dates.
        #
        # @example Evolve date ranges.
        #
        # @param [ Object ] object The object to evolve.
        #
        # @return [ Time ] The evolved date time.
        #
        # @since 1.0.0
        def evolve(object)
          object.__evolve_time__
        end
      end
    end
  end
end

::ActiveSupport::TimeWithZone.__send__(
  :include,
  Origin::Extensions::TimeWithZone
)
::ActiveSupport::TimeWithZone.__send__(
  :extend,
  Origin::Extensions::TimeWithZone::ClassMethods
)
