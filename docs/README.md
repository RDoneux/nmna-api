# Numenera API

A Go (Golang) REST API for managing Numenera RPG data, built with [Fiber](https://gofiber.io/), [MySQL](https://www.mysql.com/), and [sqlx](https://jmoiron.github.io/sqlx/). The project is containerized with Docker, supports local development with Docker Compose, and is production-ready for Kubernetes deployments. Database migrations are managed with [golang-migrate/migrate](https://github.com/golang-migrate/migrate).

---

## Features

- User authentication with JWT
- Character, item, skill, and inabilities management
- Modular controller structure
- Database migrations (up/down)
- Health checks and API utilities
- CI/CD pipeline for Docker image build and deployment
- Kubernetes manifests for API, MySQL, and migrations

---

## Project Structure

```
.
├── app.go                # Main entrypoint
├── dockerfile            # Docker build for API
├── docker-compose.yml    # Local dev orchestration
├── go.mod                # Go dependencies
├── migrations/           # SQL migration files
├── cmd/
│   ├── controllers/      # API controllers
│   ├── services/         # DB, migrations, etc.
│   └── config/           # App configuration
├── k8s/                  # Kubernetes manifests
└── ...
```

---

## Getting Started

### Prerequisites

- Go 1.20+
- Docker & Docker Compose
- MySQL (local or containerized)

### Local Development

1. **Copy and edit environment variables:**
   ```sh
   cp .env.example .env
   # Edit .env as needed
   ```

2. **Start services:**
   ```sh
   docker-compose up --build
   ```

3. **Run the app locally:**
   ```sh
   go run .
   ```

4. **API available at:** `http://localhost:3000`

---

## Database Migrations

- Migration files are in the `migrations/` directory.
- Migrations run automatically in development mode.
- To run manually:
  ```sh
  go run cmd/services/migrations.go
  ```

- In Docker Compose (uncomment the `migrate` service in `docker-compose.yml`).

- In Kubernetes, a Job runs migrations using the `numenera-migrations` image.

---

## Docker

- **Build API image:**
  ```sh
  docker build -t numenera-api -f dockerfile .
  ```

- **Build migrations image:**
  ```sh
  docker build -t numenera-migrations -f migrations/dockerfile .
  ```

---

## Kubernetes

- Manifests in `k8s/`:
  - `api-deployment.yml` – API Deployment
  - `mysql-deployment.yml` – MySQL Deployment
  - `database-migration-job.yml` – Migration Job
  - `api-service.yml`, `mysql-service.yml` – Services
  - `mysql-pvc.yml` – Persistent Volume Claim

- Deploy to your cluster:
  ```sh
  kubectl apply -f k8s/
  ```

- Secrets for DB and JWT are required (see manifest examples).

---

## CI/CD

- GitHub Actions workflow in `.github/workflows/docker.yml`:
  - Builds and pushes API and migration images to Docker Hub
  - Can be extended to deploy to Kubernetes

---

## Environment Variables

| Name                    | Description                | Example                |
|-------------------------|----------------------------|------------------------|
| DB_HOST                 | Database host              | nmna-mysql             |
| DB_PORT                 | Database port              | 3306                   |
| DB_NAME                 | Database name              | numenera               |
| DB_USER                 | Database user              | root                   |
| DB_PASSWORD             | Database password          | password               |
| JWT_SECRET              | JWT signing secret         | ...                    |
| APP_ENV                 | Environment (dev/prod)     | development            |

---

## License

MIT

---

## Author

Rob Doneux