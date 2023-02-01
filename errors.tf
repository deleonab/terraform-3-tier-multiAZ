/* Error: creating KMS Alias (alias/kms): AlreadyExistsException: An alias with the name arn:aws:kms:us-east-1:185439933271:alias/kms already exists
│
│   with module.EFS.aws_kms_alias.alias,
│   on modules/EFS/efs.tf line 30, in resource "aws_kms_alias" "alias":
│   30: resource "aws_kms_alias" "alias" {
│
╵
Fix: This error was fixed by editing the aws_kms_alias resource and setting the alias name to something new. Logging into the console showed 
that the alias kms already existed.

resource "aws_kms_alias" "alias" {
  name          = "alias/kmsnew"    # Change to kmsnew2 or so if exists
  target_key_id = aws_kms_key.ACS-kms.key_id
}
╷
│ Error: creating IAM Instance Profile (aws_instance_profile_test): EntityAlreadyExists: Instance Profile aws_instance_profile_test already exists.
│       status code: 409, request id: df8f78f1-297f-4760-9877-37f6105a5355
│
│   with module.VPC.aws_iam_instance_profile.ip,
│   on modules/VPC/roles.tf line 50, in resource "aws_iam_instance_profile" "ip":
│   50: resource "aws_iam_instance_profile" "ip" {

    Fix: I fixed this by editing the roles.tf file and setting the name of the instance profile
    from aws_instance_profile_test to aws_instance_profile_ec2. This could hold any other string

*/
###