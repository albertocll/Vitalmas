import { useState } from "react";
import { Routes, Route, Navigate } from "react-router-dom";
import Home from "./pages/Home.jsx";
import EnfermedadDetalle from "./pages/EnfermedadDetalle.jsx";
import Login from "./pages/Login.jsx";
import Footer from "./components/Footer.jsx";
import Inicio from "./pages/Inicio.jsx";
import ProtectedRoute from "./components/ProtectedRoute.jsx";
import NotFound from "./pages/NotFound.jsx";
import Header from "./components/Header.jsx";

function getAuth() {
  try {
    const parsed = JSON.parse(sessionStorage.getItem("auth") || "null");
    if (parsed && typeof parsed === "object") {
      return {
        token: parsed.token ?? null,
        usuario: {
          nombre: parsed.usuario?.nombre ?? null,
          usuario: parsed.usuario?.usuario ?? null,
        },
      };
    }
    return null;
  } catch {
    return null;
  }
}

export default function App() {
  const [auth, setAuth] = useState(getAuth);

  const displayName = auth?.usuario?.nombre || auth?.usuario?.usuario || null;

  const handleLogin = (authData) => {
    setAuth(authData);
  };

  const handleLogout = () => {
    sessionStorage.removeItem("auth");
    setAuth(null);
  };

  return (
    <>
      
        href="#main"
        className="sr-only focus:not-sr-only focus:fixed focus:top-2 focus:left-2 focus:z-50 focus:rounded-lg focus:bg-cyan-500 focus:px-3 focus:py-2 focus:text-slate-950 focus:shadow"
      <a>
        Saltar al contenido
      </a>

      <Header displayName={displayName} onLogout={handleLogout} />

      <div className="mx-auto flex min-h-screen max-w-7xl flex-col px-4 py-4">
        <main id="main" className="flex-1">
          <Routes>
            <Route index element={
              displayName
                ? <Navigate to="/enfermedades" replace />
                : <Navigate to="/login" replace />
            } />
            <Route path="enfermedades" element={<Home />} />
            <Route path="inicio" element={<Inicio />} />
            <Route
              path="enfermedad/:nombre"
              element={
                <ProtectedRoute>
                  <EnfermedadDetalle />
                </ProtectedRoute>
              }
            />
            <Route path="login" element={<Login onLogin={handleLogin} />} />
            <Route path="*" element={<NotFound />} />
          </Routes>
        </main>
      </div>

      <footer className="border-t border-slate-800/70 bg-slate-950/60">
        <div className="mx-auto max-w-7xl px-4">
          <Footer />
        </div>
      </footer>
    </>
  );
}