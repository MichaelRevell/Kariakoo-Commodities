class Commodity < ActiveRecord::Base
	belongs_to :retail_unit, :class_name => 'Unit'
#	has_one :wholesale_unit, :class_name => 'unit'
#	has_one :farm_gate_unit, :class_name => 'unit'	
#	has_one :delivered_unit, :class_name => 'unit'		
end
