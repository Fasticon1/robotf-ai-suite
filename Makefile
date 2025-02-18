## LocalAI_Nvidia Docker Compose Commands

localai_Nvidia-up: ## Start LocalAI_Nvidia in the background
	docker-compose -f ./LocalAI_Nvidia/localai-compose.yaml up -d

.PHONY: localai_Nvidia-up

localai_Nvidia-down: ## Stop the LocalAI_Nvidia
	docker-compose -f ./LocalAI_Nvidia/localai-compose.yaml down

.PHONY: localai_Nvidia-down

localai_Nvidia-restart: ## Restart LocalAI_Nvidia container
	docker-compose -f ./LocalAI_Nvidia/localai-compose.yaml restart

.PHONY: localai_Nvidia-restart

localai_Nvidia-exec: ## Exec into the LocalAI_Nvidia container
	docker exec -it localai_Nvidia /bin/bash

.PHONY: localai_Nvidia-exec

localai_Nvidia-logs: ## Get logs from LocalAI_Nvidia container
	docker logs localai_Nvidia

.PHONY: localai_Nvidia-logs

## LocalAI_AMD Docker Compose Commands

localai_AMD-up: ## Start LocalAI_AMD in the background
	docker-compose -f ./LocalAI_AMD/localai-compose.yaml up -d

.PHONY: localai_AMD-up

localai_AMD-down: ## Stop the LocalAI_AMD
	docker-compose -f ./LocalAI_AMD/localai-compose.yaml down

.PHONY: localai_AMD-down

localai_AMD-restart: ## Restart LocalAI_AMD container
	docker-compose -f ./LocalAI_AMD/localai-compose.yaml restart

.PHONY: localai_AMD-restart

localai_AMD-exec: ## Exec into the LocalAI_AMD container
	docker exec -it localai_AMD /bin/bash

.PHONY: localai_AMD-exec

localai_AMD-logs: ## Get logs from LocalAI_AMD container
	docker logs localai_AMD

.PHONY: localai_AMD-logs

## ComfyUI Docker Compose Commands

comfyui-up: ## Start ComfyUI in the background
	docker-compose -f ./ComfyUI/comfyui-compose.yaml up -d

.PHONY: comfyui-up

comfyui-down: ## Stop the ComfyUI stack
	docker-compose -f ./ComfyUI/comfyui-compose.yaml down

.PHONY: comfyui-down

comfyui-restart: ## Restart ComfyUI container
	docker-compose -f ./ComfyUI/comfyui-compose.yaml restart

.PHONY: comfyui-restart

comfyui-exec: ## Exec into the ComfyUI container
	docker exec -it comfyui /bin/bash

.PHONY: comfyui-exec

comfyui-logs: ## Get logs from ComfyUI container
	docker logs comfyui

.PHONY: comfyui-logs

## Open-WebUI Docker Compose Commands

openwebui-up: localai-up ## Start Open-WebUI in the background
	docker-compose -f ./Open-WebUI/openwebui-compose.yaml up -d

.PHONY: openwebui-up

openwebui-down: ## Stop the Open-WebUI stack
	docker-compose -f ./Open-WebUI/openwebui-compose.yaml down

.PHONY: openwebui-down

openwebui-restart: ## Restart Open-WebUI container
	docker-compose -f ./Open-WebUI/openwebui-compose.yaml restart

.PHONY: openwebui-restart

openwebui-exec: ## Exec into the Open-WebUI container
	docker exec -it openwebui /bin/bash

.PHONY: openwebui-exec

openwebui-logs: ## Get logs from Open-WebUI container
	docker logs openwebui

.PHONY: openwebui-logs


## Flowise Docker Compose Commands

flowise-up: localai-up postgres-up ## Start Flowise in the background
	docker-compose -f ./Flowise/flowise-compose.yaml up -d

.PHONY: flowise-up

flowise-down: ## Stop the Flowise stack
	docker-compose -f ./Flowise/flowise-compose.yaml down

.PHONY: flowise-down

flowise-restart: ## Restart Flowise container
	docker-compose -f ./Flowise/flowise-compose.yaml restart

.PHONY: flowise-restart

flowise-exec: ## Exec into the Flowise container
	docker exec -it flowise /bin/bash

.PHONY: flowise-exec

flowise-logs: ## Get logs from Flowise container
	docker logs flowise

.PHONY: flowise-logs

## Postgres Docker Compose Commands

postgres-up: ## Start Postgres in the background
	docker-compose -f ./Postgres/postgres-compose.yaml up -d

.PHONY: postgres-up

postgres-down: ## Stop the Postgres stack
	docker-compose -f ./Postgres/postgres-compose.yaml down

.PHONY: postgres-down

postgres-restart: ## Restart Postgres container
	docker-compose -f ./Postgres/postgres-compose.yaml restart

.PHONY: postgres-restart

postgres-exec: ## Exec into the Postgres container
	docker exec -it postgres /bin/bash

.PHONY: postgres-exec

postgres-logs: ## Get logs from Postgres container
	docker logs postgres

.PHONY: postgres-logs

## N8N Docker Compose Commands

n8n-up: localai-up postgres-up ## Start n8n in the background
	docker-compose -f ./n8n/n8n-compose.yaml up -d

.PHONY: n8n-up

n8n-down: ## Stop the n8n stack
	docker-compose -f ./n8n/n8n-compose.yaml down

.PHONY: n8n-down

n8n-restart: ## Restart n8n container
	docker-compose -f ./n8n/n8n-compose.yaml restart

.PHONY: n8n-restart

n8n-exec: ## Exec into the n8n container
	docker exec -it n8n /bin/bash

.PHONY: n8n-exec

n8n-logs: ## Get logs from n8n container
	docker logs n8n

.PHONY: n8n-logs

## Chroma Docker Compose Commands

chroma-up: localai-up ## Start ChromaDB in the background
	docker-compose -f ./ChromaDB/chromadb-compose.yaml up -d

.PHONY: chroma-up

chroma-down: ## Stop the ChromaDB stack
	docker-compose -f ./ChromaDB/chromadb-compose.yaml down

.PHONY: chroma-down

chroma-restart: ## Restart ChromaDB container
	docker-compose -f ./ChromaDB/chromadb-compose.yaml restart

.PHONY: chroma-restart

chroma-exec: ## Exec into the ChromaDB container
	docker exec -it chromadb /bin/bash

.PHONY: chroma-exec

chroma-logs: ## Get logs from ChromaDB container
	docker logs chromadb

.PHONY: chroma-logs

## Unstructured API Docker Compose Commands

unstructured-up: localai-up ## Start Unstructured-API in the background
	docker-compose -f ./Unstructured-API/unstructuredapi-compose.yaml up -d

.PHONY: unstructured-up

unstructured-down: ## Stop the Unstructured-API stack
	docker-compose -f ./Unstructured-API/unstructuredapi-compose.yaml down

.PHONY: unstructured-down

unstructured-restart: ## Restart Unstructured-API container
	docker-compose -f ./Unstructured-API/unstructuredapi-compose.yaml restart

.PHONY: unstructured-restart

unstructured-exec: ## Exec into the Unstructured-API container
	docker exec -it unstructuredapi /bin/bash

.PHONY: unstructured-exec

unstructured-logs: ## Get logs from Unstructured-API container
	docker logs unstructuredapi

.PHONY: unstructured-logs

all-up: localai-up postgres-up chroma-up unstructured-up flowise-up n8n-up openwebui-up comfyui-up ## Turns on all stacks

.PHONY: all-up

all-down: flowise-down n8n-down openwebui-down comfyui-down unstructured-down chroma-down postgres-down localai-down ## Turns off all stacks

.PHONY: all-down

help: ## show this usage
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)
.PHONY: help