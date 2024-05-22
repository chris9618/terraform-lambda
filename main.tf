resource "aws_lambda_function" "example" {
  provider = aws.account_b

  function_name = "example_lambda"
  filename = "lambda_function.zip"
  role = aws_iam_role.lambda_exec_role.arn
  handler = "lambda_function.lambda_handler"
  runtime = "python3.9"
  source_code_hash = filebase64sha256("lambda_function.zip")
}

