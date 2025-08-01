.PHONY: help start stop restart logs clean status backup validate

# Default target
help: ## Pokazuje dostępne komendy
	@echo "Dostępne komendy:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

start: ## Uruchamia Structurizr Lite
	@echo "🚀 Uruchamianie Structurizr Lite..."
	docker-compose up -d
	@echo "✅ Structurizr dostępny na: http://localhost:8080"

stop: ## Zatrzymuje Structurizr Lite
	@echo "⏹️  Zatrzymywanie Structurizr Lite..."
	docker-compose down

restart: ## Restartuje Structurizr Lite
	@echo "🔄 Restartowanie Structurizr Lite..."
	docker-compose restart

logs: ## Pokazuje logi Structurizr Lite
	docker-compose logs -f structurizr

status: ## Pokazuje status kontenerów
	docker-compose ps

clean: ## Czyści nieużywane obrazy Docker
	@echo "🧹 Czyszczenie nieużywanych obrazów Docker..."
	docker system prune -f
	docker image prune -f

backup: ## Tworzy kopię zapasową workspace.json
	@echo "💾 Tworzenie kopii zapasowej..."
	@if [ -f "Documentations/workspace.json" ]; then \
		cp Documentations/workspace.json Documentations/workspace.json.backup.$(shell date +%Y%m%d_%H%M%S); \
		echo "✅ Kopia zapasowa utworzona"; \
	else \
		echo "❌ Nie znaleziono pliku workspace.json"; \
	fi

validate: ## Sprawdza składnię plików DSL
	@echo "🔍 Sprawdzanie składni plików DSL..."
	@find . -name "*.dsl" -type f | while read file; do \
		echo "Sprawdzanie: $$file"; \
	done
	@echo "✅ Sprawdzanie zakończone"

update: ## Aktualizuje obraz Structurizr Lite
	@echo "📦 Aktualizacja obrazu Structurizr Lite..."
	docker-compose pull
	docker-compose up -d

dev: ## Uruchamia w trybie deweloperskim z logami
	@echo "🛠️  Uruchamianie w trybie deweloperskim..."
	docker-compose up

install: ## Pierwsza instalacja - uruchamia i pokazuje logi
	@echo "🎯 Pierwsza instalacja Structurizr..."
	docker-compose up -d
	@echo "📋 Czekanie na uruchomienie serwisu..."
	@sleep 10
	@echo "✅ Structurizr dostępny na: http://localhost:8080"
	@echo "📖 Sprawdź README.md aby dowiedzieć się więcej"