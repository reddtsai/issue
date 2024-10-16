.PHONY: encrypt-env
encrypt-env:
	openssl base64 -in .env -out env.base64