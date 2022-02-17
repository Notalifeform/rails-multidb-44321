class StorageController < ActiveStorage::BaseController

  def index
    User.last
    curshard = ActiveRecord::Base.current_shard
    pool = ActiveRecord::Base.connection.pool.db_config.name.to_sym
    render inline: "ActiveStorage::BaseController using shard #{curshard}/#{pool} from #{request.host}"
  end
end
