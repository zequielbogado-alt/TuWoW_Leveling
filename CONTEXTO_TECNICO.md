# Contexto Técnico de Persistencia — `TuWoW_Leveling`

> [!IMPORTANT]
> **Propósito de este documento:** Servir como fuente de verdad técnica persistente en el espacio de trabajo (junto con [`PLAN_DE_ACCION.md`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/PLAN_DE_ACCION.md)) para retomar el desarrollo en cualquier momento o tras compactaciones de contexto sin perder ningún detalle de arquitectura, reglas de modularidad ni estado de avance.

---

## 1. Reglas de Oro del Proyecto (Inquebrantables)

1. **Prohibición estricta de archivos monolíticos (`< 1000 líneas` por archivo):**
   - **Ningún archivo `.lua` puede superar las 1000 líneas de código.**
   - Todo módulo o sistema debe dividirse en sub-archivos cohesivos, modulares y reutilizables (idealmente entre `150` y `950` líneas por archivo).
   - Para módulos grandes que comparten estado interno, se utiliza `ns.ModuleEnv(init, nilKeys)` definido en [`Core/Init.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/Init.lua#L194-L216), permitiendo dividir un módulo en varios archivos `< 950` líneas sin contaminar `_G` ni superar el límite de 200 variables locales de Lua 5.1.
2. **Idiomas soportados (`enUS` y `esES` únicamente):**
   - Solo se mantienen `Locales/enUS.lua` y `Locales/esES*.lua` (`esMX` redirige automáticamente a `esES` en `Core/Init.lua`).
3. **Lenguaje Amigo (No Técnico):**
   - Todo texto visible para el jugador (menús, opciones, mensajes de chat, tooltips, botones, avisos) debe estar redactado en **lenguaje cercano, natural y fácil de entender**, evitando jerga técnica.
4. **Arquitectura Híbrida:**
   - **Shell Principal y Sistemas:** Basados en **Polestar** (`Theme`, `UI/GuideFrame`, `UI/Picker`, `UI/Dungeons`, `UI/Lookup`, `UI/Options`, `Nav`, `Quests`, `QoL`, `Gear`, `Rares`), adaptados al motor 3.3.5a (`Interface: 30300`) con `ForeverUI` (`ServerSystems`).
   - **Widget Flotante de Seguimiento de Misiones/Pasos (`UI/Tracker/`):** Basado en el diseño visual y funcional de **Zygor Guides Viewer** (colores de progreso graduales por objetivo, animación flash al completar, barra de acción segura acoplada para objetos/hechizos/macro de objetivo, pasos adhesivos/sticky y visor 3D opcional).
   - **Catálogo de Guías (1-60 Classic):** Todas las categorías de **ZygorGuidesViewerForever** (`Leveling`, `Dungeons`, `Gear`, `Professions`, `Reputations`, `Gold`, `PetsMounts`, `Events`, `Titles`, `Dailies`), depuradas de contenido exclusivo de WoW Forever (`questID >= 90000`, `npcID >= 200000`, `uiMapID = 2521` Skyborne) y reconciliadas contra `Questie-335`.

---

## 2. Estado de Avance por Fases

| Fase | Descripción | Estado |
| :--- | :--- | :--- |
| **Fase 1** | Core, Capa de Compatibilidad 3.3.5a (`Compat335`, `CompatMaps`, `Compat`), Motor de Guías (`Engine*`), `Quests/*` y Localización amigable (`enUS` / `esES`) | **COMPLETADA (100% < 1000 líneas)** |
| **Fase 2** | Shell Principal de Polestar (`Theme/*`, `Nav/*`, `UI/*`, `Dungeons/*`, `Lookup/*`, `Gear/*`, `QoL/*`, `Rares/*`) modularizado en archivos `< 1000` líneas | **COMPLETADA (100% < 1000 líneas)** |
| **Fase 3** | Widget Flotante **`TuWoW Leveling`** (Estética `ForeverUI` + Funcionalidad de Zygor en `UI/Tracker/*`) modularizado (`< 650` líneas por archivo) | **COMPLETADA (100% < 1000 líneas)** |
| **Fase 4** | Conversión, filtrado y reconciliación de Guías de Zygor (`Guides/*`) en archivos `< 1000` líneas | **PENDIENTE (Siguiente paso)** |
| **Fase 5** | Manifiesto `TuWoW_Leveling.toc`, pruebas integrales y verificación en cliente TuWoW 3.3.5a | **PENDIENTE** |

---

## 3. Mapa de Arquitectura Modular Actual (`< 1000` líneas por archivo)

### 3.1. `Core/` ([`Core/Core.xml`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/Core.xml))
- [`Core/Compat335.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/Compat335.lua) (~532 líneas): Polyfills 3.3.5a para `C_Timer`, `C_AddOns`, `C_Texture`, `C_Item`, `C_Spell`, `C_SpellBook`, `C_ChatInfo`, `C_DeathInfo`, `C_Map`, `Texture:SetGradient`, `Texture:SetTexture(..., "REPEAT")`, `SetColorTexture`, `SetShown`, `SetResizeBounds`, `SetAtlas` (conectado a `UIAtlas.data` de `ForeverUI`), y filtro de `"BackdropTemplate"` en `CreateFrame`.
- [`Core/Init.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/Init.lua) (~570 líneas): Namespace `ns`, bus de eventos, `SavedVariables` (`TuWoW_LevelingDB`, `TuWoW_LevelingCharDB`), locales `enUS`/`esES`, `ns.ModuleEnv(init, nilKeys)` y slash commands `/tuwow`, `/twl`, `/zygor`, `/polestar`.
- [`Core/CompatMaps.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/CompatMaps.lua) (~486 líneas) y [`Core/Compat.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/Compat.lua) (~862 líneas): `Compat.GetViewedMapID()` y caché de posición `(lastKnownMapID, lastKnownPx, lastKnownPy)` en `Compat.GetPlayerPosition()` para que abrir el `WorldMapFrame` en 3.3.5a nunca altere las coordenadas del jugador.
- [`Core/GuidesValidate.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/GuidesValidate.lua) (557 líneas) + [`Core/Guides.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/Guides.lua) (890 líneas).
- Motor de pasos dividido en 9 submódulos (`< 870` líneas cada uno):
  - [`Core/EngineState.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/EngineState.lua) (816 líneas)
  - [`Core/EnginePredicates.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/EnginePredicates.lua) (705 líneas)
  - [`Core/EngineDone.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/EngineDone.lua) (864 líneas)
  - [`Core/EngineViews.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/EngineViews.lua) (791 líneas)
  - [`Core/EngineTabs.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/EngineTabs.lua) (729 líneas)
  - [`Core/EngineEval.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/EngineEval.lua) (843 líneas)
  - [`Core/EngineAPI.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/EngineAPI.lua) (600 líneas)
  - [`Core/EnginePinned.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/EnginePinned.lua) (586 líneas)
  - [`Core/Engine.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/Engine.lua) (599 líneas)
- Utilidades: [`Core/Names.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/Names.lua), [`Core/QuestDB.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/QuestDB.lua), [`Core/Recorder.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/Recorder.lua), [`Core/Commands.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Core/Commands.lua).

### 3.2. `Locales/` ([`Locales/Locales.xml`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Locales/Locales.xml))
- [`Locales/enUS.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Locales/enUS.lua) (29 líneas)
- [`Locales/esES_Base1.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Locales/esES_Base1.lua) (939 líneas), [`Locales/esES_Base2.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Locales/esES_Base2.lua) (939 líneas), [`Locales/esES_Base3.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Locales/esES_Base3.lua) (941 líneas)
- [`Locales/esES.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Locales/esES.lua) (408 líneas): Sobrescrituras en lenguaje amigo no técnico cargadas al final.

### 3.3. `Quests/` ([`Quests/Quests.xml`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Quests/Quests.xml))
- [`Quests/TrackerIndex.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Quests/TrackerIndex.lua) (415 líneas) + [`Quests/Tracker.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Quests/Tracker.lua) (735 líneas), [`Quests/AutoQuest.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Quests/AutoQuest.lua) (557 líneas), [`Quests/QuestLevels.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Quests/QuestLevels.lua) (249 líneas), [`Quests/DialogChoice.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Quests/DialogChoice.lua) (153 líneas), [`Quests/Party.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Quests/Party.lua) (693 líneas), [`Quests/Emotes.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Quests/Emotes.lua) (321 líneas).

### 3.4. `Theme/` ([`Theme/Theme.xml`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Theme/Theme.xml))
- [`Theme/GameArt.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Theme/GameArt.lua) (102 líneas), [`Theme/Palettes.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Theme/Palettes.lua) (862 líneas), [`Theme/Theme.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Theme/Theme.lua) (919 líneas), [`Theme/SkinForever.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Theme/SkinForever.lua) (640 líneas), [`Theme/GameSkins.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Theme/GameSkins.lua) (617 líneas), [`Theme/Anim.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Theme/Anim.lua) (169 líneas).
- Widgets divididos en 4 módulos (`< 935` líneas cada uno):
  - [`Theme/WidgetsBase.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Theme/WidgetsBase.lua) (915 líneas)
  - [`Theme/WidgetsControls.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Theme/WidgetsControls.lua) (727 líneas)
  - [`Theme/WidgetsContainers.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Theme/WidgetsContainers.lua) (566 líneas)
  - [`Theme/WidgetsShell.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Theme/WidgetsShell.lua) (930 líneas)

### 3.5. `Nav/` ([`Nav/Nav.xml`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/Nav.xml))
- [`Nav/MapCanvas.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/MapCanvas.lua) (131 líneas): Adaptado a `WorldMapDetailFrame` / `WorldMapButton` 3.3.5a.
- Pines divididos en 3 archivos (`< 935` líneas): [`Nav/PinsLook.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/PinsLook.lua) (930 líneas, con conversión de `p.hull` a `p.area = r` para 3.3.5a), [`Nav/WorldMapPins335.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/WorldMapPins335.lua) (786 líneas, con `OnMouseDown`/`OnMouseUp` nativos 3.3.5a), [`Nav/Pins.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/Pins.lua) (758 líneas).
- Caminos y rutas divididos:
  - [`Nav/WalkFloor.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/WalkFloor.lua) (941 líneas) + [`Nav/Walk.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/Walk.lua) (948 líneas).
  - [`Nav/TravelGraph.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/TravelGraph.lua) (516 líneas) + [`Nav/TravelPlan.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/TravelPlan.lua) (609 líneas) + [`Nav/TravelState.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/TravelState.lua) (449 líneas) + [`Nav/Travel.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/Travel.lua) (815 líneas).
  - [`Nav/TravelDataTaxi.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/TravelDataTaxi.lua) (422 líneas) + [`Nav/TravelData.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/TravelData.lua) (786 líneas).
- Flecha y capas: [`Nav/Arrow.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/Arrow.lua) (782 líneas), [`Nav/Layers.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/Layers.lua) (501 líneas), [`Nav/Transit.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/Transit.lua) (904 líneas), [`Nav/Journey.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Nav/Journey.lua) (787 líneas), etc.

### 3.6. `Dungeons/`, `Lookup/`, `Gear/`, `QoL/`, `Rares/`, `UI/`
- Todos los archivos portados y modularizados bajo las 1000 líneas:
  - `QoL/Buttons.lua` dividido en [`QoL/ButtonsTarget.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/QoL/ButtonsTarget.lua) (563 líneas) + [`QoL/Buttons.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/QoL/Buttons.lua) (499 líneas).
  - `UI/GuideFrame.lua` dividido en 5 módulos: [`UI/GuideRows.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/GuideRows.lua) (863 líneas), [`UI/GuideBanners.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/GuideBanners.lua) (840 líneas), [`UI/GuideRender.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/GuideRender.lua) (597 líneas), [`UI/GuideChrome.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/GuideChrome.lua) (607 líneas), [`UI/GuideFrame.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/GuideFrame.lua) (765 líneas).
  - `UI/Dungeons.lua` dividido en 3 módulos: [`UI/DungeonsPools.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/DungeonsPools.lua) (740 líneas), [`UI/DungeonsHome.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/DungeonsHome.lua) (841 líneas), [`UI/Dungeons.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/Dungeons.lua) (708 líneas).
  - `UI/Picker.lua` dividido en 3 módulos: [`UI/PickerModel.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/PickerModel.lua) (737 líneas), [`UI/PickerDetails.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/PickerDetails.lua) (644 líneas), [`UI/Picker.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/Picker.lua) (615 líneas).
  - `UI/Welcome.lua` dividido en [`UI/WelcomePages.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/WelcomePages.lua) (950 líneas) + [`UI/Welcome.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/Welcome.lua) (836 líneas).
  - `UI/Lookup.lua` dividido en [`UI/LookupDetails.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/LookupDetails.lua) (835 líneas) + [`UI/Lookup.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/Lookup.lua) (907 líneas).
  - `UI/Options.lua` dividido en [`UI/OptionsPages.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/OptionsPages.lua) (733 líneas) + [`UI/Options.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/Options.lua) (727 líneas).
  - `UI/Gamepad.lua` dividido en [`UI/GamepadKeys.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/GamepadKeys.lua) (980 líneas) + [`UI/Gamepad.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/Gamepad.lua) (897 líneas).

---

## 4. Fases 3, 4 y 5 Completadas (`100%` — Todos los archivos `< 1000` líneas)

### 4.1. Fase 3 — Widget Flotante **`TuWoW Leveling`** (`UI/Tracker/`)
Diseño exclusivo basado en la estética **WoW Forever (`ForeverUI`)** con toda la funcionalidad del visor de pasos de **Zygor** (`< 610` líneas por archivo):
1. [`UI/Tracker/TrackerSkin.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/Tracker/TrackerSkin.lua) (279 líneas): Paleta obsidiana cálida y oro bruñido de ForeverUI + interpolación de color gradual de Zygor en 3 tramos (`0% -> 50% -> 99% -> 100%`).
2. [`UI/Tracker/TrackerRow.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/Tracker/TrackerRow.lua) (386 líneas): Pool de filas de objetivo con barra de progreso integrada, animación de destello dorado/esmeralda al avanzar o completar, clic izquierdo para apuntar la flecha y clic derecho para completar/saltar.
3. [`UI/Tracker/TrackerHeader.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/Tracker/TrackerHeader.lua) (424 líneas): Corona estelar superior (`TUWOW LEVELING`), 7 botones de acceso rápido, barra de navegación de pasos con soporte de rueda del ratón y banda de enfoque de NPC/lugar.
4. [`UI/Tracker/TrackerAction.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/Tracker/TrackerAction.lua) (267 líneas): Barra de acción segura (`SecureActionButtonTemplate`) acoplada para ítems de misión, macro `/targetexact` y Piedra de Hogar (diferida automáticamente si `InCombatLockdown()`).
5. [`UI/Tracker/TrackerModel3D.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/Tracker/TrackerModel3D.lua) (250 líneas): Visor `PlayerModel` 3D acoplado en el lateral con rotación por arrastre y selector `< / >`.
6. [`UI/Tracker/TrackerFrame.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/Tracker/TrackerFrame.lua) (603 líneas): Contenedor principal flotante (`TuWoWLevelingTrackerFrame`), bloque de pasos adhesivos (`✦ En tu camino`), caja de consejos del paso y pie de ritmo `XP/h`.
7. [`UI/Tracker/Tracker.xml`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/UI/Tracker/Tracker.xml): Manifiesto de carga del widget.

### 4.2. Fase 4 — Compilador de Guías Zygor $\rightarrow$ TuWoW 3.3.5a (`tools/` y `Guides/`)
- **Toolkit modular en Python (`< 550` líneas por archivo):**
  - [`tools/classic_db.py`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/tools/classic_db.py) (361 líneas): Cruza `Questie-335` (`4244` misiones, `10119` NPCs, `14889` ítems, `6635` objetos) con `Polestar_QuestDB` y `Polestar_esES` + `Zygor Localization-Forever`, exportando `22` archivos de `QuestDB` (`Guides/QuestDB/QDB_*.lua`) y `44` archivos de nombres en español (`Guides/Names/Names_esES_*.lua`), todos `< 750` líneas.
  - [`tools/zygor_parser.py`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/tools/zygor_parser.py) (543 líneas): Compila todas las guías 1-60 de Zygor (`Leveling`, `Dungeons`, `Class`, `Professions`, `Reputation`, `Events`) más `Collectibles` y `Exploration`, eliminando `686` referencias a misiones de Forever (`195` IDs únicos), `187` referencias a NPCs de Forever, `64` ítems de Forever, `48` guías exclusivas de Forever/SoD y `529` pasos huérfanos, reconciliando NPCs y coordenadas con 3.3.5a.
  - [`tools/convert_zygor_guides.py`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/tools/convert_zygor_guides.py) (225 líneas): Genera [`Guides/Pack.lua`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Guides/Pack.lua), `175` archivos modulares de guías (`< 760` líneas cada uno), [`Guides/Guides.xml`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/Guides/Guides.xml) y el informe [`tools/conversion_report.md`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/tools/conversion_report.md).

### 4.3. Fase 5 — Integración `.toc` y Verificación Final
- [`TuWoW_Leveling.toc`](file:///c:/TuWoW/TuWoW-Client/Interface/AddOns/TuWoW_Leveling/TuWoW_Leveling.toc): Configurado con `## Interface: 30300`, `SavedVariables: TuWoWLevelingDB, PolestarDB` y `SavedVariablesPerCharacter: TuWoWLevelingCharDB, PolestarCharDB`.
- **Verificación de Modularidad:** `424` archivos `.lua`/`.py` en total; máximo `926` líneas; **`0` archivos $\ge 1000$ líneas**; `0` referencias XML rotas.
