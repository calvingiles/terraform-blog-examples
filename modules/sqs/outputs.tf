output queue-details {
	value = {
		name = "${aws_sqs_queue.dead-letter-queue.name}"
		arn = "${aws_sqs_queue.dead-letter-queue.arn}"
		dead-letter-name = "${aws_sqs_queue.dead-letter-queue.name}"
		dead-letter-arn = "${aws_sqs_queue.dead-letter-queue.arn}"
	}
}