
#!/bin/bash
set -e

dnf update -y
dnf install -y httpd

systemctl enable httpd
systemctl start httpd

cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AWS High Availability Project</title>
</head>
<body>
  <h1>AWS High Availability Project</h1>
  <h2>3-Tier Web Application</h2>
  <p>Application is running successfully!</p>
  <p>Server: SERVER_NAME_PLACEHOLDER</p>
</body>
</html>
EOF
