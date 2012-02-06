
$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', '..', '..', 'base', 'lib')

require 'base/provisioner'
require 'active_service/common'

class VCAP::Services::Active::Provisioner < VCAP::Services::Base::Provisioner

  include VCAP::Services::Active::Common

  def node_score(node)
    node['available_storage']
  end

end
