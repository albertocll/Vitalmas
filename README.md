# 🏥 Vitalmas

Aplicación full-stack para la gestión de enfermedades y síntomas en entornos médicos. Desarrollada como proyecto personal de portfolio en el ciclo **DAM**.

---

## 🛠️ Stack Tecnológico

| Capa | Tecnología |
|------|-----------|
| Frontend | React + Vite + Tailwind CSS |
| Backend | Spring Boot 3.5 + Java 21 |
| Base de datos | PostgreSQL 16 |
| Seguridad | Spring Security + JWT |
| Infraestructura | Docker + Docker Compose |

---

## ✅ Requisitos Previos

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) instalado y en ejecución
- Git

No necesitas Java ni Node instalados localmente, Docker lo gestiona todo.

---

## 🚀 Instalación y Arranque

```bash
# 1. Clona el repositorio
git clone https://github.com/albertocll/Vitalmas.git
cd Vitalmas

# 2. Crea el archivo de configuración local (no se sube al repo)
cp docker-compose.override.example.yml docker-compose.override.yml

# 3. Levanta todos los servicios
docker-compose up -d
```

Una vez arriba:

- **Frontend** → http://localhost:5173
- **Backend** → http://localhost:8080
- **Health check** → http://localhost:8080/api/ping

---

## 📡 Endpoints Principales

| Método | Endpoint | Auth | Descripción |
|--------|----------|------|-------------|
| GET | `/api/ping` | ❌ | Health check |
| POST | `/api/auth/login` | ❌ | Login, devuelve JWT |
| GET | `/api/enfermedades` | ✅ MEDICO | Listado de enfermedades |
| POST | `/api/enfermedades` | ✅ MEDICO | Crear enfermedad |
| GET | `/api/sintomas` | ✅ MEDICO | Listado de síntomas |

> Las rutas protegidas requieren el header: `Authorization: Bearer <token>`

---

## 🔑 Credenciales de Desarrollo

> ⚠️ Solo para entorno local. No usar en producción.

| Campo | Valor |
|-------|-------|
| Usuario | `house` |
| Contraseña | `***REMOVED***` |
| Rol | `MEDICO` |

---

## 🗂️ Estructura del Repositorio

```
Vitalmas/
├── backend/        # API REST en Spring Boot
├── frontend/       # Aplicación React
├── db/             # Scripts SQL de inicialización
├── docker-compose.yml
└── README.md
```

---

## 👥 Colaboradores

- **Alberto Claros** — [@albertocll](https://github.com/albertocll)
- **Hugo Paramés** — [@Hugo-Parames-Baeza](https://github.com/Hugo-Parames-Baeza)

---

*Proyecto de uso educativo — Portfolio DAM*