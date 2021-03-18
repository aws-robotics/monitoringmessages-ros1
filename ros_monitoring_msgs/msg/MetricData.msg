std_msgs/Header header

# Constant for NA string
string NA_STRING=non_applicable_string_value

#####################################
# required fields

# The name for the metric
string metric_name

# The units applied to the value
string unit

# The value of the metric
float64 value

# The time since the epoch
time time_stamp

# optional Custom dimensions used to group/sort metrics
MetricDimension[] dimensions
