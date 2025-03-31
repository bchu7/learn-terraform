terraform init -->  (execute once) setup environment, download and install provider plugins, moduless and dependencies
terraform plan -->  preview execution plan (build?)
terraform apply --> apply changes to the infrastruture

terraform show --> to show the result of the last apply action
terraform output [output variable] --> print output results, can be used to pass result to another service
terraform validate --> check syntax
terraform providers --> show used providers
terraform apply -refresh-only --> update the state file with changes from infrastructure
terraform graph --> generate a graph output, this can be visualize using graphviz
terraform graph | dot -Tsvg > graph/graph.svg --> generate a file graph.svg

Terraform block:
provider "provider"
resource "provider_type" "name"

- preconfigured variables as environment variables
 export TF_VAR_filename="/root/pets.txt"


AWS Project Development Kit (PDK) - CDK Graph
  https://aws.github.io/aws-pdk/developer_guides/cdk-graph/index.html