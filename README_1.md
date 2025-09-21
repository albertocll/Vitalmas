# 🏥 Proyecto Vitalmas

Aplicación full-stack para la gestión de enfermedades y síntomas, con frontend en **React + Vite y Tailwind CSS** y backend en **Spring Boot** con **API REST** protegida mediante **Spring Security**.

---

## 📋 Descripción

Proyecto desarrollado como parte del aprendizaje en **Desarrollo de Aplicaciones Multiplataforma (DAM)**.  
El sistema permite gestionar un modelo médico con entidades como **Enfermedad** y **Síntoma**, exponiendo endpoints REST seguros para su uso desde el frontend.

Actualmente utiliza **PostgreSQL en Docker** como base de datos principal, con scripts de inicialización en la carpeta `/db/`.

---

## 🚀 Características

✅ Frontend en React + Vite con Tailwind CSS  
✅ Backend en Spring Boot con JPA / Hibernate  
✅ Base de datos PostgreSQL en Docker  
✅ Scripts SQL en `/db/` para inicializar y poblar datos (22 especialidades, 240 enfermedades)  
✅ Autenticación básica con Spring Security (usuario `house`, rol `MEDICO`)  
✅ Endpoints REST para la gestión de enfermedades y síntomas  
✅ Proyecto preparado para trabajo colaborativo en GitHub y entornos Docker  

---

## 🛠️ Tecnologías Utilizadas

**Frontend**  
- React + Vite  
- Tailwind CSS  

**Backend**  
- Java 21  
- Spring Boot  
- Spring Security  
- JPA / Hibernate  
- PostgreSQL  

**Infraestructura**  
- Docker / Docker Compose  

---

## 📁 Estructura del Proyecto
```
Proyecto-Vitalmas/
│
├── vitalmas-frontend/         # React + Vite + Tailwind
│   ├── src/                   # Código fuente del frontend
│   └── package.json
│
├── vitalmas-backend/          # Spring Boot API
│   ├── src/main/java/api/     # Código fuente del backend
│   ├── pom.xml                # Configuración Maven
│   └── application.properties
│
├── db/                        # Scripts de base de datos
│   ├── 01_schema.sql          # Definición de tablas
│   ├── 03_seed_enfermedades.sql # Inserción de datos iniciales
│   └── README_db.md
│
├── docker-compose.yml         # Configuración base (Postgres)
├── docker-compose.override.yml# Extiende para backend + frontend
└── README.md                  # Documentación del proyecto
```

---

## 📡 Endpoints REST

- `GET /api/ping` → público, test de conexión  
- `GET /api/enfermedades` → listado de enfermedades (requiere rol `MEDICO`)  
- `POST /api/enfermedades` → crear enfermedad (requiere rol `MEDICO`)  
- Más endpoints en desarrollo…  

---

## 🎯 Conceptos Aplicados

- Programación full-stack (frontend + backend)  
- Seguridad con Spring Security  
- Persistencia de datos con JPA y PostgreSQL  
- Validación y modelado de entidades  
- Orquestación con Docker Compose  
- Desarrollo colaborativo con GitHub  

---

## 🌐 Demo en Vivo

🔗 *Próximamente* (Netlify + Render/Heroku con PostgreSQL)  

---

## 🚀 Instalación y Uso

### Opción 1: Docker Compose (recomendada)

1. Clonar el repositorio:
   ```bash
   git clone https://github.com/albertocll/Proyecto-Vitalmas.git
   cd Proyecto-Vitalmas
   ```

2. Levantar todo el stack:
   ```bash
   docker compose up -d
   ```

3. Servicios disponibles:
   - **Frontend** → http://localhost:5173  
   - **Backend** → http://localhost:8080  
   - **PostgreSQL** → localhost:5432  

---

### Opción 2: Manual (solo para desarrollo)

**Backend**
```bash
cd vitalmas-backend
mvn spring-boot:run
```

**Frontend**
```bash
cd vitalmas-frontend
npm install
npm run dev
```

---

## 🔑 Credenciales de desarrollo

- Usuario: `house`  
- Contraseña: `***REMOVED***`  
- Rol: `MEDICO`

---

## 📄 Licencia

Este proyecto es de uso personal y educativo.

---

## 👥 Colaboradores

- **Alberto Claros** — GitHub: [albertocll](https://github.com/albertocll)  
- **Hugo** — Colaborador https://github.com/Hugo-Parames-Baeza

---

## 📸 Preview

📷 Próximamente: capturas del frontend y del modelo de datos.
