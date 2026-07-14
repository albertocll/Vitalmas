# 🏥 Vitalmas

Aplicación full-stack para la gestión médica de enfermedades, síntomas, médicos, pacientes y citas. Desarrollada como proyecto personal de portfolio en el ciclo **DAM**.

---

## 🛠️ Stack Tecnológico

| Capa | Tecnología |
|------|-----------|
| Frontend | React + Vite + Tailwind CSS |
| Backend | Spring Boot 3.5 + Java 21 |
| Base de datos | PostgreSQL 16 |
| Seguridad | Spring Security + JWT |
| Infraestructura | Docker + Docker Compose |
| Documentación API | Swagger / OpenAPI |

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
- **Swagger UI** → http://localhost:8080/swagger-ui/index.html
- **Health check** → http://localhost:8080/api/ping

---

## 📡 Endpoints Principales

### 🔐 Autenticación
| Método | Endpoint | Auth | Descripción |
|--------|----------|------|-------------|
| POST | `/api/auth/login` | ❌ | Login, devuelve JWT y refresh token |
| POST | `/api/auth/register` | ✅ ADMIN | Registrar nuevo usuario |
| POST | `/api/auth/logout` | ✅ | Invalidar token JWT |
| POST | `/api/auth/refresh` | ❌ | Renovar access token con refresh token |

### 👤 Usuarios
| Método | Endpoint | Auth | Descripción |
|--------|----------|------|-------------|
| GET | `/api/usuarios` | ✅ | Listar usuarios |
| GET | `/api/usuarios/{id}` | ✅ | Detalle de usuario |
| PUT | `/api/usuarios/{id}` | ✅ ADMIN | Actualizar usuario |
| DELETE | `/api/usuarios/{id}` | ✅ ADMIN | Eliminar usuario |
| PUT | `/api/usuarios/me/password` | ✅ | Cambiar contraseña |

### 🦠 Enfermedades
| Método | Endpoint | Auth | Descripción |
|--------|----------|------|-------------|
| GET | `/api/enfermedades` | ✅ | Listar enfermedades (paginado) |
| GET | `/api/enfermedades?nombre={texto}` | ✅ | Buscar por nombre parcial |
| GET | `/api/enfermedades?nivelRiesgo={valor}` | ✅ | Filtrar por nivel de riesgo |
| GET | `/api/enfermedades?sintomaId={uuid}` | ✅ | Filtrar por síntoma |
| GET | `/api/enfermedades/{id}` | ✅ | Detalle de enfermedad |
| POST | `/api/enfermedades` | ✅ | Crear enfermedad |
| GET | `/api/enfermedades/{id}/sintomas` | ✅ | Síntomas de una enfermedad |
| POST | `/api/enfermedades/{id}/sintomas/{sintomaId}` | ✅ | Vincular síntoma |
| DELETE | `/api/enfermedades/{id}/sintomas/{sintomaId}` | ✅ | Desvincular síntoma |

### 🩺 Síntomas
| Método | Endpoint | Auth | Descripción |
|--------|----------|------|-------------|
| GET | `/api/sintomas` | ✅ | Listar síntomas |

### 👨‍⚕️ Médicos
| Método | Endpoint | Auth | Descripción |
|--------|----------|------|-------------|
| GET | `/api/medicos` | ✅ | Listar médicos (paginado) |
| GET | `/api/medicos/{id}` | ✅ | Detalle de médico |
| POST | `/api/medicos` | ✅ | Crear médico |
| PUT | `/api/medicos/{id}` | ✅ | Actualizar médico |
| DELETE | `/api/medicos/{id}` | ✅ | Eliminar médico |
| GET | `/api/medicos/{id}/citas` | ✅ | Historial de citas del médico |

### 🧑‍🤝‍🧑 Pacientes
| Método | Endpoint | Auth | Descripción |
|--------|----------|------|-------------|
| GET | `/api/pacientes` | ✅ | Listar pacientes (paginado) |
| GET | `/api/pacientes/{id}` | ✅ | Detalle de paciente |
| GET | `/api/pacientes/dni/{dni}` | ✅ | Buscar por DNI |
| POST | `/api/pacientes` | ✅ | Crear paciente |
| PUT | `/api/pacientes/{id}` | ✅ | Actualizar paciente |
| DELETE | `/api/pacientes/{id}` | ✅ | Eliminar paciente |
| GET | `/api/pacientes/{id}/citas` | ✅ | Historial de citas del paciente |

### 📅 Citas
| Método | Endpoint | Auth | Descripción |
|--------|----------|------|-------------|
| GET | `/api/citas` | ✅ | Listar citas (paginado) |
| GET | `/api/citas/{id}` | ✅ | Detalle de cita |
| POST | `/api/citas?medicoId={id}&pacienteId={id}` | ✅ | Crear cita |
| PUT | `/api/citas/{id}` | ✅ | Actualizar cita |
| DELETE | `/api/citas/{id}` | ✅ | Eliminar cita |

### 📊 Estadísticas
| Método | Endpoint | Auth | Descripción |
|--------|----------|------|-------------|
| GET | `/api/stats` | ✅ | Estadísticas del sistema |

> Las rutas protegidas requieren el header: `Authorization: Bearer <token>`

---

## 🔑 Credenciales de Desarrollo

> ⚠️ Solo para entorno local. No usar en producción.

| Campo | Valor |
|-------|-------|
| Usuario | `house` |
| Contraseña | `House@2026!` |
| Rol | `MEDICO` |

---

## 🗂️ Estructura del Repositorio

```
Vitalmas/
├── backend/        # API REST en Spring Boot
│   ├── src/
│   │   ├── main/java/api/
│   │   │   ├── config/     # Seguridad, JWT, CORS, Swagger
│   │   │   ├── dto/        # Data Transfer Objects
│   │   │   ├── model/      # Entidades JPA
│   │   │   ├── repository/ # Repositorios Spring Data
│   │   │   ├── service/    # Lógica de negocio
│   │   │   ├── util/       # JwtUtil
│   │   │   ├── validation/ # GlobalExceptionHandler
│   │   │   └── web/        # Controllers REST
│   │   └── resources/
│   │       ├── application.properties
│   │       └── data.sql    # Seed de datos
│   └── Dockerfile
├── frontend/       # Aplicación React
│   ├── src/
│   │   ├── components/
│   │   ├── pages/
│   │   └── api.js
│   ├── nginx.conf
│   └── Dockerfile
├── docker-compose.yml
├── docker-compose.override.example.yml
└── README.md
```

---

## 👥 Colaboradores

- **Alberto Claros** — [@albertocll](https://github.com/albertocll)
- **Hugo Paramés** — [@Hugo-Parames-Baeza](https://github.com/Hugo-Parames-Baeza)

---

*Proyecto de uso educativo — Portfolio DAM*