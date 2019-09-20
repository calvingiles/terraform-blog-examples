resource aws_sqs_queue main-queue {
	name = "${var.name}-queue"
	redrive_policy = "{\"deadLetterTargetArn\":\"${aws_sqs_queue.dead-letter-queue.arn}\",\"maxReceiveCount\":4}"
}
resource aws_sqs_queue dead-letter-queue {
	name = "${var.name}-dead-letter-queue"
}