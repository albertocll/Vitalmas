# 🏥 Proyecto Vitalmas

Aplicación full-stack para la gestión de enfermedades y síntomas, con frontend en **React + Vite y Tailwind CSS** y backend en **Spring Boot** con **API REST** protegida mediante **Spring Security**.

---

## 📋 Descripción

Proyecto desarrollado como parte del aprendizaje en **Desarrollo de Aplicaciones Multiplataforma (DAM)**.  
El sistema permite gestionar un modelo médico con entidades como **Enfermedad** y **Síntoma**, exponiendo endpoints REST seguros para su uso desde el frontend.

Actualmente utiliza **H2 en memoria** como base de datos para facilitar el desarrollo y pruebas.

---

## 🚀 Características

✅ Frontend en React + Vite con Tailwind CSS  
✅ Backend en Spring Boot con JPA / Hibernate  
✅ Base de datos H2 en memoria (modo PostgreSQL)  
✅ Autenticación básica con Spring Security (usuario `house`, rol `MEDICO`)  
✅ Endpoints REST para la gestión de enfermedades y síntomas  
✅ Proyecto preparado para trabajo colaborativo en GitHub  

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
- H2 Database  

---
## 📁 Estructura del Proyecto
Proyecto-Vitalmas/
│
├── vitalmas-frontend/ # React + Vite + Tailwind
│ ├── src/ # Código fuente del frontend
│ └── package.json
│
├── vitalmas-backend/ # Spring Boot API
│ ├── src/main/java/api/ # Código fuente del backend
│ ├── pom.xml # Configuración Maven
│ └── application.properties
│
└── README.md # Documentación del proyecto


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
- Persistencia de datos con JPA  
- Validación y modelado de entidades  
- Desarrollo colaborativo con GitHub  

---

## 🌐 Demo en Vivo

🔗 *Próximamente* (Netlify + Render/Heroku)  

---

## 🚀 Instalación y Uso

### Backend
1. Clonar el repositorio:
   ```bash
   git clone https://github.com/albertocll/Proyecto-Vitalmas.git
   
2. Entrar en la carpeta del backend:
  cd vitalmas-backend

Credenciales de desarrollo:

Usuario: house

Contraseña: ***REMOVED***

Rol: MEDICO


Frontend

Entrar en la carpeta del frontend:

cd vitalmas-frontend


Instalar dependencias:

npm install


Levantar en modo desarrollo:

npm run dev

📄 Licencia

Este proyecto es de uso personal y educativo.

👥 Colaboradores

Alberto Claros — GitHub

Hugo — (colaborador)

📸 Preview

Próximamente: capturas del frontend y del modelo de datos.

