#> iris_bob:setup/storage
#
# @context any
# @within iris_bob:setup/load
# @writes
#	storage iris_bob:data
#		is_setup: bool Whether storage has already been setup
#	storage iris_bob:input
#		skip_entities: bool Unused
#		distance: int Unused

data merge storage iris_bob:data {is_setup: 1b}
data merge storage iris_bob:input {skip_entities: 0b, distance: 16}