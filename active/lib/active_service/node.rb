$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', '..', '..', 'base', 'lib')

require 'base/node'
require 'active_service/common'

class VCAP::Services::Active::Node < VCAP::Services::Base::Node

	include VCAP::Services::Active::Common

	def initialize options
		super(options)
		@logger.info("I'm still alive!!!")
	end

	def announcement
		{
			:text => 'some announcement'
		}
	end
end