output "database_name" {
    value = "${var.database_name}"
}
output "region" {
    value = "${var.region}"
}

# output "Team1_Output_sec_group" {
#   value = "${data.terraform_remote_state.mysql.sec_group_1}"
# }

output "writer_aws_rds_endpoint" {
  value = "Writer ${aws_rds_cluster.mydb.endpoint}"
}

output "Reader_aws_rds_endpoint" {
  value = "Reader ${aws_rds_cluster.mydb.reader_endpoint}"
}
