require "periscope"
require "dm-core"

module Periscope
  module Adapters
    module DataMapper
      include Periscope

      private

      def periscope_default_scope
        all
      end
    end
  end
end

DataMapper::Model.send(:include, Periscope::Adapters::DataMapper)
