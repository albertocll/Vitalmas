# 🏥 Vitalmas: Sistema de Gestión Médica Full-stack

Aplicación integral para la gestión de enfermedades y síntomas, desarrollada como proyecto destacado en el ciclo **DAM**. El sistema expone una **API REST** protegida y una interfaz reactiva moderna.

---

## 🚀 Características y Stack
- **Frontend**: React + Vite & Tailwind CSS.
- **Backend**: Spring Boot 3, Java 21 & Spring Security.
- **Base de Datos**: PostgreSQL (Docker) / H2 (Memoria en dev).
- **Dataset**: +240 enfermedades y 22 especialidades médicas precargadas.
- **Seguridad**: Autenticación básica con roles (MEDICO).

## 📡 Endpoints Principales
- `GET /api/ping` → Test público de conexión.
- `GET /api/enfermedades` → Listado completo (Requiere rol MEDICO).
- `POST /api/enfermedades` → Registro de nuevas patologías (Requiere rol MEDICO).

## 🔑 Credenciales de Desarrollo
- **Usuario**: `house`
- **Contraseña**: `house123`
- **Rol**: `MEDICO`

## 🏗️ Estructura del Repositorio
- **/backend**: API REST en Spring Boot.
- **/frontend**: Aplicación React.
- **/db**: Scripts SQL (`01_schema.sql`, `03_seed_enfermedades.sql`) para inicialización de datos.

## 👥 Colaboradores
- **Alberto Claros** ([albertocll](https://github.com/albertocll))
- **Hugo Paramés** ([Hugo-Parames-Baeza](https://github.com/Hugo-Parames-Baeza))

---
*Este proyecto es de uso educativo y forma parte de mi portfolio personal.*