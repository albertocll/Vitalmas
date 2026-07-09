const BASE = import.meta.env.VITE_API_BASE || "/api"

function getToken() {
  try {
    const auth = JSON.parse(sessionStorage.getItem("auth") || "null");
    return auth?.token ?? null;
  } catch {
    return null;
  }
}

function authHeaders() {
  const token = getToken()
  return token ? { Authorization: `Bearer ${token}` } : {}
}

export async function login(usuario, password) {
  const res = await fetch(`${BASE}/auth/login`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ usuario, password })
  })
  if (res.status === 401) return null
  if (!res.ok) throw new Error("Error en login")
  const data = await res.json()
  return data.token
}

export async function listarEnfermedades(q) {
  const url = `${BASE}/enfermedades?size=300`
  const res = await fetch(url, {
    headers: authHeaders()
  })
  if (!res.ok) throw new Error("Error listando enfermedades")
  const data = await res.json()
  return data.content ?? data
}

export async function getEnfermedad(nombre) {
  const res = await fetch(`${BASE}/enfermedades/${encodeURIComponent(nombre)}`, {
    headers: authHeaders()
  })
  if (res.status === 404) return null
  if (!res.ok) throw new Error("Error obteniendo enfermedad")
  return res.json()
}

export async function listarSintomas(nombre) {
  const res = await fetch(`${BASE}/enfermedades/${encodeURIComponent(nombre)}/sintomas`, {
    headers: authHeaders()
  })
  if (!res.ok) throw new Error("Error listando síntomas")
  return res.json()
}