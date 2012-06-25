module Todo
  VERSION = '0.0.1'
  ACCESS_KEY = 'AKIAIUYCZBPB2N6Q64WQ'
  SECRET_KEY = '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'
  DATABASE_NAME = 'ec2'
  MICRO_PRICE = 0.020
  MEDIUM_PRICE = 0.165
  SMALL_PRICE = 0.080

  def self.check_if_exists client,instance
  	result = client.query("select * from runs where instance_id = '#{instance[:aws_instance_id]}'")
  	if result.count == 0
  		client.query("insert into runs(instance_id,start_time,stop_time,flavor,server_state,ec2_region,tags) values('#{instance[:aws_instance_id]}','#{instance[:aws_launch_time]}','#{instance[:aws_stop_time]}','#{instance[:aws_instance_type]}','#{instance[:aws_state]}','#{instance[:aws_availability_zone]}','#{instance[:tags]}')")
  	elsif result.count == 1
  		result = result.first
      Todo::update_cost client,instance 
  		if instance[:tags] != result['tags'] || instance[:aws_instance_type] != result['flavor'] || instance[:aws_availability_zone] != result['ec2_region'] || instance[:aws_state] != result['server_state']  
  				client.query("update runs set flavor = '#{instance[:aws_instance_type]}',ec2_region='#{instance[:aws_availability_zone]}',server_state='#{instance[:aws_state]}',tags='#{instance[:tags]}' where instance_id = '#{instance[:aws_instance_id]}'")
  		end 
  	else
  		puts 'something wrong'	
  	end

  end

  def self.update_cost client,instance
  	start_time = DateTime.parse(instance[:aws_launch_time].to_s)
    time = DateTime.now
    dif = time - start_time
    if instance == "t1.micro"
      total_cost = dif.to_i*24*MICRO_PRICE
    elsif instance == "m1.small"
      total_cost = dif.to_i*24*SMALL_PRICE
    else
      total_cost = dif.to_i*24*MEDIUM_PRICE
    end
    result = client.query("select * from costs where instance_id = '#{instance[:aws_instance_id]}'")
    if result.count == 0
      client.query("insert into costs(instance_id,cost,billing_owner,billing_group) values('#{instance[:aws_instance_id]}','#{total_cost}','#{instance[:tags]['billing-owner']}','#{instance[:tags]['billing-group']}')")
    else
      client.query("update costs set billing_owner='#{instance[:tags]['billing-owner']}',billing_group='#{instance[:tags]['billing-group']}',cost=#{total_cost} where instance_id='#{instance[:aws_instance_id]}'")
    end
  end
end