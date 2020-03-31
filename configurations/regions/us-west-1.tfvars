region = "us-west-1"

#  Provide a region for VPC
environment                     =   "N.California"
database_name                   =   "db_team2"
dynamodb_table                  =   "terraform-team2"

# Choose az's to create DB
az1                             =   "us-west-1b"
az2                             =   "us-west-1c"


s3_bucket                       =	"terraform-project-backend-2020-team2"
s3_folder_region                =	"us-east-1"




s3_folder_project               =   "team2"
s3_folder_type                  =   "tools"
s3_tfstate_file                 =   "team2.tfstate"

# DB

cluster_identifier  = "mysqldb-team2"
engine              = "aurora"
engine_version      = "5.6.10a"

# DB name, username, passwd
database_name              = "db_team2"
master_username            = "team2user"
master_password            = "team2passw4rd"
backup_retention_period    = 7
skip_final_snapshot        = true
preferred_backup_window    = "07:00-09:00"
port = "443"
port = "3306"