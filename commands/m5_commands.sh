# Time to make our deployment a bit more resilient!
# We are going to add a second instance and load balance the
# two instances behind a load balancer. We are going to need 
# to discover availability zones, add subnets, and add an
# application load balancer, target group, load balancer listener
# and target group attachment.
terraform state list
terraform state show aws_instance.nginx1

terraform validate

# In case you don't have them set anymore don't forget to run the export commands
# For Linux and MacOS
export TF_VAR_aws_access_key=AKIAU63R2HRNTJXLI5K6
export TF_VAR_aws_secret_key=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

# For PowerShell
$env:TF_VAR_aws_access_key="AKIAU63R2HRNTJXLI5K6"
$env:TF_VAR_aws_secret_key="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"

terraform plan -out m5.tfplan
terraform apply m5.tfplan