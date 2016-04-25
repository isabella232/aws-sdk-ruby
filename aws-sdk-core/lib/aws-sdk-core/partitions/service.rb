require 'set'

module Aws
  module Partitions
    class Service

      # @option options [required, String] :name
      # @option options [required, String] :partition_name
      # @option options [required, Set<String>] :region_name
      # @option options [required, Boolean] :regionalized
      # @option options [String] :partition_region
      # @api private
      def initialize(options = {})
        @name = options[:name]
        @partition_name = options[:partition_name]
        @regions = options[:regions]
        @regionalized = options[:regionalized]
        @partition_region = options[:partition_region]
        @regions << @partition_region if !@regionalized
      end

      # @return [String] The name of this service. The name is the module
      #   name as used by the AWS SDK for Ruby.
      attr_reader :name

      # @return [String] The partition name, e.g "aws", "aws-cn", "aws-us-gov".
      attr_reader :partition_name

      # @return [Set<String>] The regions this service is available in.
      #   Regions are scoped to the partition.
      attr_reader :regions

      # @return [String,nil] The global patition endpoint for this service.
      #   May be `nil`.
      attr_reader :partition_region

      # Returns `false` if the service operates with a single global
      # endpoint for the current partition, returns `true` if the service
      # is available in mutliple regions.
      #
      # Some services have both a partition endpoint and regional endpoints.
      #
      # @return [Boolean]
      def regionalized?
        @regionalized
      end

      class << self

        # @api private
        def build(service_name, service, partition)
          Service.new(
            name: service_name,
            partition_name: partition['partition'],
            regions: regions(service, partition),
            regionalized: service['isRegionalized'] != false,
            partition_region: partition_region(service)
          )
        end

        private

        def regions(service, partition)
          names = Set.new(partition['regions'].keys & service['endpoints'].keys)
          names - ["#{partition['partition']}-global"]
        end

        def partition_region(service)
          if service['partitionEndpoint']
            endpoint = service['endpoints'][service['partitionEndpoint']]
            region = if endpoint['credentialScope']
              endpoint['credentialScope']['region']
            elsif service['defaults'] && service['defaults']['credentialScope']
              service['defaults']['credentialScope']['region']
            end
            unless region
              raise "missing partition endpoint region for #{service.inspect}"
            end
            region
          end
        end

      end
    end
  end
end
