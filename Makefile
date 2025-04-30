# Nama module Go
MODULE_NAME := logging-system-proto

# File proto
PROTO_FILE := log.proto

# Direktori output
OUT_DIR := generated

# Generate Go
generate-go:
	@echo "🔧 Generating Go files from proto..."
	protoc \
		--go_out=$(OUT_DIR)/go \
		--go_opt=paths=source_relative \
		--go-grpc_out=$(OUT_DIR)/go \
		--go-grpc_opt=paths=source_relative \
		$(PROTO_FILE)