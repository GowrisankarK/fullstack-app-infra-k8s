export NAMESPACE_NAME="your_namespace_name"

#cert tls creation
envsubst < ./3.create-lets-encrypt-certificate.yaml | kubectl apply -f -