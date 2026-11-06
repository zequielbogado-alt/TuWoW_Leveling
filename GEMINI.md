# Memoria Persistente del Proyecto — `TuWoW_Leveling`

Antes de realizar cualquier cambio o al retomar el trabajo tras una compactación de contexto, consulta siempre estas dos fuentes de información obligatorias del proyecto:

1. **Plan de Acción General:** @[PLAN_DE_ACCION.md](./PLAN_DE_ACCION.md)
2. **Contexto Técnico y APIs 3.3.5a:** @[CONTEXTO_TECNICO.md](./CONTEXTO_TECNICO.md)

## Reglas Inquebrantables de Desarrollo
- **Modularidad (< 1000 líneas por archivo):** Ningún archivo `.lua` debe superar las 1000 líneas. Divide cualquier módulo o componente grande en submódulos reutilizables y fáciles de mantener dentro de su carpeta correspondiente, registrando sus piezas en `ns` (`Polestar` / `TuWoW_Leveling`).
- **Idiomas (`enUS` y `esES` únicamente):** Solo mantener soporte para inglés (`enUS`) y español (`esES`, incluyendo `esMX`).
- **Lenguaje Amigo (No Técnico):** Todo texto visible para los jugadores (menús, opciones, botones, tooltips, mensajes de chat) debe usar un lenguaje cercano, claro y libre de tecnicismos.
- **Compatibilidad Cliente TuWoW 3.3.5a (`Interface: 30300`):** Nunca usar APIs exclusivas de clientes modernos sin pasar por `Core/Compat335.lua` o `Core/Compat*.lua`.

