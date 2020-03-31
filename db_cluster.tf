#########
# DB
#########
resource "aws_db_subnet_group" "default" {
  name = "subnet"
  subnet_ids = [
    "${data.terraform_remote_state.mysql.Private_Subnet1}",
    "${data.terraform_remote_state.mysql.Private_Subnet2}",
    "${data.terraform_remote_state.mysql.Private_Subnet3}"
    ]
}
resource "aws_rds_cluster" "mydb" {
  cluster_identifier  = "${var.cluster_identifier}"
  engine              = "${var.engine}"
  engine_version      = "${var.engine_version}"
  # db name, username, passwd
  database_name              = "${var.database_name}"
  master_username            = "${var.master_username}"
  master_password            = "${var.master_password}"
  backup_retention_period    = "${var.backup_retention_period}"
  skip_final_snapshot        = "${var.skip_final_snapshot}"
  preferred_backup_window    = "${var.preferred_backup_window}"
#   port = "${var.port}"
  vpc_security_group_ids = ["${data.terraform_remote_state.mysql.sec_group_1}"]
  db_subnet_group_name = "${aws_db_subnet_group.default.name}"
}
