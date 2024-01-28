# AWS SFTP with password authentication

[AWS Tranfer Family](https://aws.amazon.com/aws-transfer-family/), is a fully managed service designed to simplify the migration of your file transfer workflows to AWS, all without requiring modifications to existing applications or clients. This service facilitates seamless uploading and downloading of files over SFTP directly to and from [Amazon S3](https://aws.amazon.com/s3/). Users can be managed in two ways: by storing their identities within the service or by integrating with an existing identity provider of your choice.

If you opt to store user identities within the service, AWS Transfer Family allows you to enable SSH (Secure Shell) keys for end-user authentication. On the other hand, when integrating an external identity provider for authentication, AWS Transfer Family supports both password authentication (traditional password-based authentication) and SSH keys.

In this guide, I will demonstrate how to leverage password authentication with AWS Transfer for SFTP and implement dynamic role allocation for access to Amazon S3. This involves integration with a custom identity data provider (IdP), and for the purpose of this example, I will showcase the utilization of [AWS Secrets Manager](https://aws.amazon.com/secrets-manager) as the IdP.

Using the custom authentication mode gives you the flexibility to check other user attributes. In this post, I cover integrating AWS Secrets Manager as a custom authentication provider for AWS Transfer Family, enabling:

-   SSH and/or password-based user authentication
-   Independent password and role support for FTP/FTPS users
-   Optional client source IP address checks for individual users
-   Dynamic role allocation for access to Amazon S3
-   [Logical directory](https://aws.amazon.com/about-aws/whats-new/2019/09/aws-transfer-for-sftp-now-supports-logical-directories-for-amazon-s3/)  mappings.