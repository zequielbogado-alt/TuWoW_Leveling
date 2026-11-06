-- ============================================================================
-- TuWoW_Leveling — Rares/RareData.lua
-- Base de datos nativa, visor 3D e indice de busqueda para Raros y Tesoros.
-- ============================================================================

local ADDON, ns = ...

local RareData = {}
ns.RareData = RareData

-- Diccionario de 403 Raros Clasicos (1-60) con coordenadas y loot verificado
local RARES = {
	[61] = { n = "Thuros Dedoluz", en = "Thuros Lightfingers", l = 11, h = 11, e = false, m = 1429, sp = {{52.66,58.91}}, lt = {118,159,2070,2589} },
	[79] = { n = "Narg el Capataz", en = "Narg the Taskmaster", l = 10, h = 10, e = false, m = 1429, sp = {{40.91,77.52}}, lt = {117,118,159,2589} },
	[99] = { n = "Morgaine el Astuto", en = "Morgaine the Sly", l = 10, h = 10, e = false, m = 1429, sp = {{30.81,64.73}}, lt = {117,118,159,2091,2589} },
	[100] = { n = "Bronco Mordeveloz", en = "Gruff Swiftbite", l = 12, h = 12, e = false, m = 1429, sp = {{25.39,89.75}}, lt = {117,118,159,1307,2589} },
	[462] = { n = "Vultros", en = "Vultros", l = 26, h = 26, e = false, m = 1436, sp = {{50.64,43.55}}, lt = {555,729,5114,5115,5116,5636,11416,17056} },
	[471] = { n = "Madre Colmillo", en = "Mother Fang", l = 10, h = 10, e = false, m = 1429, sp = {{62.14,48.05}}, lt = {117,118,159,1476,3174,4540,5465} },
	[472] = { n = "Fedfennel", en = "Fedfennel", l = 12, h = 12, e = false, m = 1429, sp = {{68.13,44.87}}, lt = {117,118,159,2589,4540} },
	[503] = { n = "Lord Malathrom", en = "Lord Malathrom", l = 31, h = 31, e = false, m = 1431, sp = {{21.14,27.19}}, lt = {929,1205,3385,4306,4606,6530} },
	[506] = { n = "Sargento Garravil", en = "Sergeant Brashclaw", l = 18, h = 18, e = false, m = 1436, sp = {{36.88,31.85}}, lt = {725,858,1179,2287,2455,2589,2592} },
	[507] = { n = "Fenros", en = "Fenros", l = 32, h = 32, e = false, m = 1431, sp = {{61.72,36.85}}, lt = {929,1205,3385,4606,4634,5637} },
	[519] = { n = "Eslarc", en = "Slark", l = 15, h = 15, e = false, m = 1436, sp = {{47.01,10.94}}, lt = {730,858,1179,1357,5498,5523,6289} },
	[520] = { n = "Brack", en = "Brack", l = 19, h = 19, e = false, m = 1436, sp = {{27.27,44.54}}, lt = {730,858,1179,1357,2455,5523,5784,6289} },
	[521] = { n = "Lupos", en = "Lupos", l = 23, h = 23, e = false, m = 1431, sp = {{32.63,25.84}}, lt = {1015,3301,3402,5635} },
	[534] = { n = "Nefaru", en = "Nefaru", l = 34, h = 34, e = false, m = 1431, sp = {{63.48,83.67}}, lt = {929,1205,3385,3770,4299,4634,5637} },
	[572] = { n = "Leprithus", en = "Leprithus", l = 19, h = 19, e = false, m = 1436, sp = {{43.04,27.0}}, lt = {858,1179,2085,2455,2589,2592,4605,6530} },
	[573] = { n = "Siegaenemigos 4000", en = "Foe Reaper 4000", l = 20, h = 20, e = false, m = 1436, sp = {{44.82,35.38}}, lt = {732,814,1274,4359,4361,4363} },
	[574] = { n = "Naraxis", en = "Naraxis", l = 27, h = 27, e = false, m = 1431, sp = {{86.36,47.57}}, lt = {878,1074,1081,1130,1206,1288,2251,2771} },
	[584] = { n = "Kazon", en = "Kazon", l = 27, h = 27, e = false, m = 1433, sp = {{34.9,8.27}}, lt = {929,1205,2589,2592,3385,3770,4306} },
	[596] = { n = "Noble aducido", en = "Brainwashed Noble", l = 18, h = 18, e = true, m = 1436, sp = {{43.98,78.33}}, lt = {414,858,1179,2455,2589,2592} },
	[599] = { n = "Marisa du'Paige", en = "Marisa du'Paige", l = 18, h = 18, e = true, m = 1436, sp = {{42.23,79.91}}, lt = {414,858,1179,2455,2589,2592} },
	[601] = { n = "Capo the Mean", en = "Capo the Mean", l = 16, h = 16, e = true, m = 291, sp = {{42.6,72.2}}, lt = {} },
	[616] = { n = "Castañeta", en = "Chatter", l = 23, h = 23, e = false, m = 1433, sp = {{52.13,45.24}}, lt = {878,1081,1288,2251,3174,3182,4428} },
	[723] = { n = "Carnicero Mosh'Ogg", en = "Mosh'Ogg Butcher", l = 44, h = 44, e = true, m = 1434, sp = {{49.83,30.87}}, lt = {1645,2725,2732,2744,2751,3928,3930,4306} },
	[763] = { n = "Cabecilla Perdido", en = "Lost One Chieftain", l = 39, h = 39, e = false, m = 1435, sp = {{61.96,21.16}}, lt = {1708,1710,3385,3771,3827,4306,4338,4544} },
	[771] = { n = "Comandante Yelestrón", en = "Commander Felstrom", l = 32, h = 32, e = false, m = 1431, sp = {{18.01,37.9}}, lt = {858,929,1205,2455,2592,3385,4306,4606} },
	[947] = { n = "Rohh el Silencioso", en = "Rohh the Silent", l = 26, h = 26, e = false, m = 1433, sp = {{75.47,39.59}}, lt = {929,1075,1205,1962,2589,2592,3385,3770} },
	[1037] = { n = "Maestro de batalla Faucedraco", en = "Dragonmaw Battlemaster", l = 30, h = 30, e = false, m = 1437, sp = {{45.34,44.41}}, lt = {858,929,1205,2592,3337,3385,3770,4306} },
	[1063] = { n = "Jade", en = "Jade", l = 47, h = 47, e = true, m = 220, sp = {{69.6,53.6}}, lt = {4402,4460,4557,8146} },
	[1106] = { n = "Cocinero Perdido", en = "Lost One Cook", l = 37, h = 37, e = false, m = 1435, sp = {{65.23,22.8}}, lt = {1708,1710,3385,3771,4306,4338,4636} },
	[1112] = { n = "Viuda sanguijuela", en = "Leech Widow", l = 24, h = 24, e = false, m = 1437, sp = {{47.27,59.22}}, lt = {878,1081,1288,2251,3174,3182,4428} },
	[1119] = { n = "Martidorsal", en = "Hammerspine", l = 12, h = 12, e = false, m = 1426, sp = {{71.45,51.29}}, lt = {117,118,159,2589,4540} },
	[1130] = { n = "Bjarn", en = "Bjarn", l = 12, h = 12, e = false, m = 1426, sp = {{55.64,58.51}}, lt = {2940,3169,3170,3173,5635} },
	[1132] = { n = "Maderero", en = "Timber", l = 10, h = 10, e = false, m = 1426, sp = {{34.21,41.79}}, lt = {2672,3299,3300} },
	[1137] = { n = "Edan el Aullador", en = "Edan the Howler", l = 9, h = 9, e = false, m = 1426, sp = {{38.98,47.48}}, lt = {117,118,159,2671} },
	[1140] = { n = "Matriarca Tajobuche", en = "Razormaw Matriarch", l = 31, h = 31, e = false, m = 1437, sp = {{69.93,29.22}}, lt = {1696,1697,3685,4461,5635,5637,12184} },
	[1260] = { n = "Gran patriarca Arctikus", en = "Great Father Arctikus", l = 11, h = 11, e = false, m = 1426, sp = {{22.78,52.08}}, lt = {117,118,159,2589} },
	[1398] = { n = "Jefe Vayachi", en = "Boss Galgosh", l = 22, h = 22, e = false, m = 1432, sp = {{68.07,65.93}}, lt = {858,1179,2287,2455,2589,2592,5109} },
	[1399] = { n = "Magosh", en = "Magosh", l = 21, h = 21, e = false, m = 1432, sp = {{70.12,66.39}}, lt = {858,1179,2287,2455,2589,2592,5109} },
	[1424] = { n = "Maestro excavador", en = "Master Digger", l = 15, h = 15, e = false, m = 1436, sp = {{46.42,19.06}}, lt = {858,1179,2455,2589,4537} },
	[1425] = { n = "Grizlak", en = "Grizlak", l = 15, h = 15, e = false, m = 1432, sp = {{34.58,27.07}}, lt = {118,858,1179,2455,2589} },
	[1531] = { n = "Alma perdida", en = "Lost Soul", l = 6, h = 7, e = false, m = 1420, sp = {{53.18,48.37}}, lt = {118,159,765,774,818,2447,2589,2770} },
	[1533] = { n = "Espíritu atormentado", en = "Tormented Spirit", l = 8, h = 9, e = false, m = 1420, sp = {{45.59,31.62}}, lt = {118,159,774,818,2447,2589,4604} },
	[1552] = { n = "Panzascama", en = "Scale Belly", l = 45, h = 45, e = false, m = 1434, sp = {{43.44,45.71}}, lt = {2772,2838,4092,4093,4637,7909,8146,11386} },
	[1720] = { n = "Bruegal Nudoferro", en = "Bruegal Ironknuckle", l = 26, h = 26, e = true, m = 225, sp = {{50.4,66.8}}, lt = {1205,2592,2909,2941,2942,3228,4306,4542} },
	[1837] = { n = "Juez Escarlata", en = "Scarlet Judge", l = 60, h = 60, e = false, m = 1422, sp = {{42.21,18.5}}, lt = {3821,4306,5759,8766,8932,8952,10620,12365} },
	[1838] = { n = "Interrogador Escarlata", en = "Scarlet Interrogator", l = 61, h = 61, e = true, m = 1422, sp = {{45.15,15.27}}, lt = {5760,7909,8766,8932,13444,13446,14047,14508} },
	[1839] = { n = "Alto Clérigo Escarlata", en = "Scarlet High Clerist", l = 63, h = 63, e = true, m = 1422, sp = {{56.94,34.81}}, lt = {3827,7909,8766,8932,13444,13446,14047,16251} },
	[1841] = { n = "Verdugo Escarlata", en = "Scarlet Executioner", l = 60, h = 60, e = true, m = 1422, sp = {{45.71,18.78}}, lt = {4500,5759,7909,8766,8932,12683,13444,13446} },
	[1843] = { n = "Supervisor Jerris", en = "Foreman Jerris", l = 62, h = 62, e = true, m = 1422, sp = {{45.56,9.21}}, lt = {7909,8766,8932,10620,12365,12693,13444,13446} },
	[1844] = { n = "Supervisor Marcrid", en = "Foreman Marcrid", l = 58, h = 58, e = false, m = 1422, sp = {{49.04,32.73}}, lt = {8766,8932,13444,13446,14047} },
	[1847] = { n = "Crinatroz", en = "Foulmane", l = 52, h = 52, e = false, m = 1422, sp = {{46.27,52.43}}, lt = {5758,6530,7972,8766,8948,12840,13356,13443} },
	[1848] = { n = "Lord Maldazzar", en = "Lord Maldazzar", l = 56, h = 56, e = false, m = 1422, sp = {{54.16,80.43}}, lt = {5759,7910,8766,8932,12841,13444,13446,14047} },
	[1849] = { n = "Rumoratroz", en = "Dreadwhisper", l = 58, h = 58, e = false, m = 1422, sp = {{48.2,54.1}}, lt = {4306} },
	[1850] = { n = "Putridus", en = "Putridius", l = 58, h = 58, e = true, m = 1422, sp = {{48.05,67.39}}, lt = {7972,8766,8948,12843,13356,13444,13446,14047} },
	[1851] = { n = "La Cáscara", en = "The Husk", l = 62, h = 62, e = false, m = 1422, sp = {{62.15,36.31}}, lt = {2450,2452,3818,4625,7909,8766,8831,8838} },
	[1885] = { n = "Herrero Escarlata", en = "Scarlet Smith", l = 59, h = 59, e = false, m = 1422, sp = {{44.36,13.54}}, lt = {5759,8766,8932,12719,13444,13446,14047,19232} },
	[1910] = { n = "Muad", en = "Muad", l = 10, h = 10, e = false, m = 1420, sp = {{36.49,42.39}}, lt = {118,159,774,779,818,2770,2835,4302} },
	[1911] = { n = "Deeb", en = "Deeb", l = 12, h = 12, e = false, m = 1420, sp = {{63.29,27.48}}, lt = {118,159,779,818,5523,6303} },
	[1920] = { n = "Escribachizo de Dalaran", en = "Dalaran Spellscribe", l = 21, h = 21, e = false, m = 4811, sp = {{63.54,63.35}}, lt = {414,858,1179,2589,2592,4537} },
	[1936] = { n = "Granjero Solliden", en = "Farmer Solliden", l = 8, h = 8, e = false, m = 1420, sp = {{38.04,49.61}}, lt = {117,118,159,774,818,2070,2091,2447} },
	[1944] = { n = "Truhán Putrepellejo", en = "Rot Hide Bruiser", l = 22, h = 22, e = false, m = 4811, sp = {{64.67,23.05}}, lt = {414,858,1179,1206,2455,2589,2592,3236} },
	[1948] = { n = "Melegruños", en = "Snarlmane", l = 23, h = 23, e = false, m = 4811, sp = {{65.1,25.1}}, lt = {414,858,1179,1206,2455,2589,2592,4537} },
	[2090] = { n = "Ma'ruk Vermiscala", en = "Ma'ruk Wyrmscale", l = 23, h = 23, e = false, m = 1437, sp = {{48.06,74.7}}, lt = {422,858,929,1205,1210,1705,2455,2589} },
	[2108] = { n = "Garneg Hullacráneo", en = "Garneg Charskull", l = 29, h = 29, e = false, m = 1437, sp = {{38.42,46.06}}, lt = {929,1205,2592,3385,3770,4306,4633,7131} },
	[2172] = { n = "Zancador Madrezarpa", en = "Strider Clutchmother", l = 20, h = 20, e = false, m = 4657, sp = {{34.82,87.31}}, lt = {1206,1210,1497,1504,1507,1510,1511,1512} },
	[2175] = { n = "Garrasombría", en = "Shadowclaw", l = 13, h = 13, e = false, m = 4657, sp = {{40.29,40.52}}, lt = {765,774,1210,5134,7074,15945} },
	[2184] = { n = "Lady Miraluna", en = "Lady Moongazer", l = 17, h = 17, e = false, m = 4657, sp = {{42.98,61.11}}, lt = {858,1179,1210,2455,2589,2592,4537,4605} },
	[2186] = { n = "Carnívoris el Rompedor", en = "Carnivous the Breaker", l = 16, h = 16, e = false, m = 4657, sp = {{39.37,53.46}}, lt = {1179,1206,1210,2589,2592,4537,5578,6342} },
	[2191] = { n = "Licillin", en = "Licillin", l = 14, h = 14, e = false, m = 4657, sp = {{45.66,36.38}}, lt = {774,818,858,1179,1210,2287,2455,2589} },
	[2192] = { n = "Clamafuegos Radison", en = "Firecaller Radison", l = 19, h = 19, e = false, m = 4657, sp = {{38.69,87.64}}, lt = {414,818,858,1179,1206,1210,2287,2447} },
	[2258] = { n = "Furia pétrea", en = "Stone Fury", l = 37, h = 37, e = false, m = 1416, sp = {{64.68,44.77}}, lt = {1529,1725,3358,3818,3831,3832,3864,3868} },
	[2283] = { n = "Regente Corvozarpa", en = "Ravenclaw Regent", l = 22, h = 22, e = false, m = 4811, sp = {{56.83,70.18}}, lt = {858,1179,1705,2455,2589,2592,2770,2771} },
	[2447] = { n = "Narillasanz", en = "Narillasanz", l = 44, h = 44, e = true, m = 1416, sp = {{73.71,65.35}}, lt = {1210,2776,3864,4375,4402,4460,4637,6444} },
	[2452] = { n = "Skhowl", en = "Skhowl", l = 36, h = 36, e = false, m = 1416, sp = {{31.43,51.51}}, lt = {1708,1710,2772,2838,3385,3720,3771,4304} },
	[2453] = { n = "Lo'Grosh", en = "Lo'Grosh", l = 39, h = 39, e = false, m = 1416, sp = {{52.09,46.94}}, lt = {1708,1710,3385,3771,3858,3864,4306,4338} },
	[2476] = { n = "Crocolisco del lago grande", en = "Large Loch Crocolisk", l = 22, h = 22, e = false, m = 1432, sp = {{58.9,31.07}}, lt = {1206,2450,2452,2700,2924,2925,2939,3181} },
	[2541] = { n = "Lord Sakrasis", en = "Lord Sakrasis", l = 45, h = 45, e = false, m = 1434, sp = {{28.33,62.56}}, lt = {1645,2725,2728,2730,2732,2734,2735,2738} },
	[2598] = { n = "Darbel Montrosa", en = "Darbel Montrose", l = 39, h = 39, e = true, m = 1417, sp = {{26.51,60.74}}, lt = {1707,1708,1710,3355,3827,3864,4300,4306} },
	[2600] = { n = "Kantor", en = "Singer", l = 34, h = 34, e = false, m = 1417, sp = {{32.31,30.99}}, lt = {929,1707,1708,1710,2592,2928,2997,3385} },
	[2601] = { n = "Panzatroz", en = "Foulbelly", l = 42, h = 42, e = true, m = 1417, sp = {{20.41,66.87}}, lt = {1708,1710,3385,3771,4306,4338,7910,7976} },
	[2602] = { n = "Ruul Onapiedra", en = "Ruul Onestone", l = 39, h = 39, e = true, m = 1417, sp = {{18.07,68.78}}, lt = {1529,1708,1710,3771,3864,4306,4338,4636} },
	[2603] = { n = "Kovork", en = "Kovork", l = 36, h = 36, e = false, m = 1417, sp = {{30.37,43.77}}, lt = {1708,1710,2772,2838,3385,3771,3864,4306} },
	[2604] = { n = "Molok el Triturador", en = "Molok the Crusher", l = 39, h = 39, e = false, m = 1417, sp = {{54.62,79.71}}, lt = {929,1707,1708,1710,2772,2838,3357,3385} },
	[2605] = { n = "Zalas Secacorteza", en = "Zalas Witherbark", l = 40, h = 40, e = false, m = 1417, sp = {{64.83,73.45}}, lt = {1708,3385,3771,3858,3864,4306,4338,4503} },
	[2606] = { n = "Nimar el Destripador", en = "Nimar the Slayer", l = 37, h = 37, e = false, m = 1417, sp = {{64.64,73.25}}, lt = {1529,1708,1710,3385,3771,3864,4306,4338} },
	[2609] = { n = "Geomántico Dagasílex", en = "Geomancer Flintdagger", l = 40, h = 40, e = false, m = 1417, sp = {{82.8,32.23}}, lt = {1708,1710,3827,3864,4306,4338,4539} },
	[2744] = { n = "Comandante de Forjatiniebla", en = "Shadowforge Commander", l = 40, h = 40, e = false, m = 1418, sp = {{41.49,29.75}}, lt = {1708,1710,2143,3827,3864,4306,4338,4544} },
	[2749] = { n = "Gólem de asedio", en = "Siege Golem", l = 40, h = 40, e = true, m = 1418, sp = {{19.86,56.58}}, lt = {4552,4554,4636,7912,8150} },
	[2751] = { n = "Gólem de guerra", en = "War Golem", l = 36, h = 36, e = false, m = 1418, sp = {{52.41,19.48}}, lt = {4552,4553,7912,8150} },
	[2752] = { n = "Estruendor", en = "Rumbler", l = 45, h = 45, e = false, m = 1418, sp = {{14.73,89.33}}, lt = {3858,3864,4552,4554,4625,4637,4784,7067} },
	[2754] = { n = "Anathemus", en = "Anathemus", l = 45, h = 45, e = true, m = 1418, sp = {{23.7,74.16}}, lt = {2772,2775,3864,3868,4552,4554,7909,7910} },
	[2779] = { n = "Príncipe Nazjak", en = "Prince Nazjak", l = 41, h = 41, e = false, m = 1417, sp = {{19.37,90.15}}, lt = {1708,1710,4637,6362,7072,7973,17058} },
	[2850] = { n = "Diente partido", en = "Broken Tooth", l = 37, h = 37, e = false, m = 1418, sp = {{59.69,29.37}}, lt = {422,858,929,1205,1206,1210,1529,1645} },
	[2931] = { n = "Zaricotl", en = "Zaricotl", l = 55, h = 55, e = true, m = 1418, sp = {{56.11,61.73}}, lt = {556,2772,2838,3358,3404,4500,5117,5758} },
	[3056] = { n = "Aullido Fantasma", en = "Ghost Howl", l = 12, h = 12, e = false, m = 1412, sp = {{33.17,25.24}}, lt = {765,774,818,1210,2447,2672,3299,3300} },
	[3068] = { n = "Mazzranache", en = "Mazzranache", l = 9, h = 9, e = false, m = 1412, sp = {{50.39,42.58}}, lt = {765,774,818,2447,4757,4759,4775,4776} },
	[3253] = { n = "Cosechador silítido", en = "Silithid Harvester", l = 24, h = 24, e = false, m = 1413, sp = {{43.07,70.08}}, lt = {1210,2453,2770,2835,5138,5268,5269,6663} },
	[3270] = { n = "Anciano místico Filocico", en = "Elder Mystic Razorsnout", l = 15, h = 15, e = true, m = 1413, sp = {{59.25,24.38}}, lt = {774,818,858,1179,1210,2287,2455,2589} },
	[3295] = { n = "Bestia de lodo", en = "Sludge Beast", l = 19, h = 19, e = false, m = 1413, sp = {{56.72,8.17}}, lt = {3669,3670,3671,3673,3674,3676,4293,7296} },
	[3398] = { n = "Gesharahan", en = "Gesharahan", l = 20, h = 20, e = true, m = 1413, sp = {{46.52,39.46}}, lt = {765,818,856,1206,1210,2409,2770,2771} },
	[3470] = { n = "Rathorian", en = "Rathorian", l = 15, h = 15, e = false, m = 1413, sp = {{47.95,19.17}}, lt = {774,818,858,1179,1210,2447,2455,2589} },
	[3535] = { n = "Musgonegro el Fétido", en = "Blackmoss the Fetid", l = 13, h = 13, e = false, m = 4500, sp = {{43.97,30.22}}, lt = {118,159,765,785,818,1210,2447,2449} },
	[3581] = { n = "Bestia de alcantarilla", en = "Sewer Beast", l = 50, h = 50, e = false, m = 1453, sp = {{66.53,31.44}}, lt = {770,4638} },
	[3586] = { n = "Minero Johnson", en = "Miner Johnson", l = 19, h = 19, e = true, m = 291, sp = {{42.6,72.2}}, lt = {414,1179,2589,2592,2770,2771,2836,5443} },
	[3652] = { n = "Tritesta el Azotador", en = "Trigore the Lasher", l = 19, h = 19, e = true, m = 1413, sp = {{48.29,33.07}}, lt = {818,1206,1210,3010,4349,4874,5523} },
	[3672] = { n = "Boahn", en = "Boahn", l = 20, h = 20, e = true, m = 1413, sp = {{49.06,33.9}}, lt = {818,858,1179,1206,1210,2455,2589,2592} },
	[3735] = { n = "Boticario Falthis", en = "Apothecary Falthis", l = 22, h = 22, e = false, m = 3836, sp = {{33.2,21.1}}, lt = {929,1205,2589,2592,3385,4306,4606,16645} },
	[3773] = { n = "Akkrilus", en = "Akkrilus", l = 26, h = 26, e = false, m = 3836, sp = {{25.62,63.54}}, lt = {929,1205,1529,2592,3770,4306,4606,16645} },
	[3792] = { n = "Señor de la manada Luporror", en = "Terrowulf Packlord", l = 32, h = 32, e = false, m = 3836, sp = {{49.77,39.61}}, lt = {929,1205,3385,3770,4352,5635,5637,16645} },
	[3872] = { n = "Capitán Juramorte", en = "Deathsworn Captain", l = 25, h = 25, e = true, m = 310, sp = {{44.8,67.8}}, lt = {1205,2589,2592,4606,6641,6642} },
	[4015] = { n = "Patriarca Alaorgullo", en = "Pridewing Patriarch", l = 25, h = 25, e = false, m = 1442, sp = {{53.79,36.31}}, lt = {1206,1210,2601,3393,4632,5135,5136,5504} },
	[4030] = { n = "Anciano vengativo", en = "Vengeful Ancient", l = 30, h = 30, e = false, m = 1442, sp = {{30.45,68.08}}, lt = {765,785,929,1205,1206,1705,2447,2449} },
	[4066] = { n = "Nal'taszar", en = "Nal'taszar", l = 30, h = 30, e = true, m = 1442, sp = {{25.57,11.48}}, lt = {857,1206,1705,3175,3179,3611,4402,4633} },
	[4132] = { n = "Devastador silítido", en = "Silithid Ravager", l = 37, h = 37, e = false, m = 1441, sp = {{68.38,82.32}}, lt = {1529,1707,1708,1710,2452,2838,3771,3832} },
	[4339] = { n = "Brotasangre", en = "Brimgore", l = 45, h = 45, e = true, m = 1445, sp = {{42.12,75.94}}, lt = {3864,4402,4460,4637,6444,7909,8146} },
	[4380] = { n = "Viuda Niebla Negra", en = "Darkmist Widow", l = 40, h = 40, e = false, m = 1445, sp = {{31.15,20.4}}, lt = {1074,4337,4585,4636,5637,5884,5959,10285} },
	[4425] = { n = "Cazador ciego", en = "Blind Hunter", l = 32, h = 32, e = true, m = 301, sp = {{40.8,89.6}}, lt = {5635,5637,6695,6696,6697,11391,11392,11393} },
	[4438] = { n = "Cuerolanza de Rajacieno", en = "Razorfen Spearhide", l = 29, h = 30, e = true, m = 301, sp = {{40.8,89.6}}, lt = {422,776,858,929,1205,1206,1488,1529} },
	[4842] = { n = "Clamatierras Halmgar", en = "Earthcaller Halmgar", l = 32, h = 32, e = true, m = 301, sp = {{40.8,89.6}}, lt = {1205,2592,4306,4538,5825,6688,6689} },
	[5343] = { n = "Lady Szallah", en = "Lady Szallah", l = 46, h = 46, e = false, m = 3457, sp = {{28.2,67.6}}, lt = {1645,2776,3858,3928,4603,5500,6149,7910} },
	[5345] = { n = "Cabeza Diamante", en = "Diamond Head", l = 45, h = 45, e = false, m = 3457, sp = {{36.6,51.41}}, lt = {1645,3928,4603,7973} },
	[5346] = { n = "Rugesangre el Acechador", en = "Bloodroar the Stalker", l = 48, h = 48, e = false, m = 3457, sp = {{52.03,60.91}}, lt = {1645,2772,2838,3928,4599,4638,6149,8146} },
	[5347] = { n = "Antilus el Surcador", en = "Antilus the Soarer", l = 48, h = 48, e = false, m = 3457, sp = {{55.6,74.15}}, lt = {3858,4590,5117,5829,7910,7912,8705,9591} },
	[5348] = { n = "Vigía de los sueños Lengua Bífida", en = "Dreamwatcher Forktongue", l = 62, h = 62, e = false, m = 279, sp = {{46.2,36.4}}, lt = {} },
	[5349] = { n = "Arash-ethis", en = "Arash-ethis", l = 49, h = 49, e = false, m = 3457, sp = {{44.79,25.02}}, lt = {4638,6444,6826,7909,7990,8705,16220} },
	[5350] = { n = "Qirot", en = "Qirot", l = 47, h = 47, e = false, m = 3457, sp = {{76.65,66.24}}, lt = {6300,6302,8705} },
	[5352] = { n = "Viejo Tripasgrises", en = "Old Grizzlegut", l = 43, h = 43, e = false, m = 3457, sp = {{59.46,59.44}}, lt = {8146,8705,11408,11409,11410} },
	[5354] = { n = "Núdor Fraterfolio", en = "Gnarl Leafbrother", l = 44, h = 44, e = false, m = 3457, sp = {{69.24,57.31}}, lt = {765,785,1645,2447,2450,2453,3357,3358} },
	[5356] = { n = "Gruñidor", en = "Snarler", l = 42, h = 42, e = false, m = 3457, sp = {{80.22,39.57}}, lt = {4583,4584,4637,7909,7910,8146,8705,10302} },
	[5367] = { n = "Scillia Daggerquil", en = "Scillia Daggerquil", l = 35, h = 35, e = true, m = 1426, sp = {{68.2,55.4}}, lt = {} },
	[5399] = { n = "Veyzhak el Caníbal", en = "Veyzhak the Cannibal", l = 48, h = 48, e = true, m = 1441, sp = {{76.4,78.2}}, lt = {1520,1645,4338,4599,6181,7910,8152,14466} },
	[5400] = { n = "Zekkis", en = "Zekkis", l = 49, h = 49, e = true, m = 1441, sp = {{75.8,77.5}}, lt = {1520,1645,3928,4338,4599,6149,6181,8152} },
	[5785] = { n = "Hermana Azote de Odio", en = "Sister Hatelash", l = 11, h = 11, e = true, m = 1412, sp = {{36.21,11.31}}, lt = {117,118,159,774,818,1210,2589,2770} },
	[5786] = { n = "Jalalanza", en = "Snagglespear", l = 9, h = 9, e = false, m = 1412, sp = {{48.41,72.03}}, lt = {117,118,159,774,818,2070,2447,2589} },
	[5787] = { n = "Déspota Emilgund", en = "Enforcer Emilgund", l = 11, h = 11, e = false, m = 1412, sp = {{40.42,15.7}}, lt = {117,118,159,787,818,1210,2589,2770} },
	[5789] = { n = "Serra Mountainhome", en = "Serra Mountainhome", l = 10, h = 10, e = true, m = 1426, sp = {{46.2,53.8}}, lt = {} },
	[5790] = { n = "Lizzle Sprysprocket", en = "Lizzle Sprysprocket", l = 9, h = 9, e = true, m = 1426, sp = {{45.8,54.2}}, lt = {} },
	[5793] = { n = "Captain Armistice", en = "Captain Armistice", l = 10, h = 10, e = true, m = 1426, sp = {{47.1,52.6}}, lt = {} },
	[5794] = { n = "Thurmonde the Devout", en = "Thurmonde the Devout", l = 10, h = 10, e = true, m = 1426, sp = {{46.5,53.1}}, lt = {} },
	[5795] = { n = "Grash Thunderbrew", en = "Grash Thunderbrew", l = 9, h = 9, e = true, m = 1426, sp = {{45.2,54.0}}, lt = {} },
	[5796] = { n = "Ben", en = "Ben", l = 8, h = 8, e = true, m = 1426, sp = {{46.8,53.4}}, lt = {} },
	[5797] = { n = "Aean Río Veloz", en = "Aean Swiftriver", l = 26, h = 26, e = true, m = 1413, sp = {{48.51,79.69}}, lt = {929,1205,1206,1210,1705,2589,2592,2601} },
	[5798] = { n = "Thora Plumaluna", en = "Thora Feathermoon", l = 25, h = 25, e = true, m = 1413, sp = {{48.52,79.65}}, lt = {929,1205,1206,1210,1705,2589,2592,3385} },
	[5799] = { n = "Hannah Filohoja", en = "Hannah Bladeleaf", l = 24, h = 24, e = true, m = 1413, sp = {{48.48,79.71}}, lt = {929,1205,1206,1210,1705,2447,2589,2592} },
	[5800] = { n = "Marcus Bel", en = "Marcus Bel", l = 24, h = 24, e = true, m = 1413, sp = {{48.51,79.72}}, lt = {929,1205,1206,1210,1705,2589,2592,2883} },
	[5807] = { n = "El Rastrillo", en = "The Rake", l = 10, h = 10, e = false, m = 1412, sp = {{53.38,17.04}}, lt = {774,818,4813,4814} },
	[5808] = { n = "Señor de la guerra Kolkanis", en = "Warlord Kolkanis", l = 9, h = 9, e = false, m = 1411, sp = {{47.88,77.37}}, lt = {117,118,159,765,774,818,2070,2447} },
	[5809] = { n = "Comandante de vigilancia Zalafil", en = "Watch Commander Zalaphil", l = 9, h = 9, e = false, m = 1411, sp = {{59.23,58.52}}, lt = {117,118,159,774,818,2070,2091,2589} },
	[5822] = { n = "Tejeyel Scronn", en = "Felweaver Scornn", l = 11, h = 11, e = true, m = 1411, sp = {{52.78,8.96}}, lt = {117,118,159,774,818,1210,2447,2589} },
	[5823] = { n = "Despellejador de la Muerte", en = "Death Flayer", l = 11, h = 11, e = false, m = 1411, sp = {{36.53,49.67}}, lt = {765,774,818,1210,1475,2447,4867,4872} },
	[5824] = { n = "Capitán Colmillo Plano", en = "Captain Flat Tusk", l = 11, h = 11, e = true, m = 1411, sp = {{42.57,39.03}}, lt = {117,118,159,774,818,1210,2589,2770} },
	[5826] = { n = "Geoseñor motas", en = "Geolord Mottle", l = 9, h = 9, e = false, m = 1411, sp = {{43.17,39.26}}, lt = {118,159,765,774,818,2447,2589,2770} },
	[5827] = { n = "Brontus", en = "Brontus", l = 27, h = 27, e = true, m = 1413, sp = {{47.28,73.16}}, lt = {1529,4896,5082,5121,5122,5467,6661,6663} },
	[5828] = { n = "Humar el Señor Orgulloso", en = "Humar the Pridelord", l = 23, h = 23, e = true, m = 1413, sp = {{62.05,33.33}}, lt = {1206,2589,2592,3731,4306,4893,5135,5136} },
	[5829] = { n = "Bufo el Molesto", en = "Snort the Heckler", l = 17, h = 17, e = false, m = 1413, sp = {{41.15,22.23}}, lt = {1206,1210,3299,3301,5635,6661,6716} },
	[5830] = { n = "Hermana Rathtalon", en = "Sister Rathtalon", l = 19, h = 19, e = true, m = 1413, sp = {{39.06,15.3}}, lt = {818,858,1179,1206,1210,2287,2455,2589} },
	[5831] = { n = "Velocrín", en = "Swiftmane", l = 21, h = 21, e = true, m = 1413, sp = {{61.23,34.46}}, lt = {804,1206,1210,1705,5086,5119,5120,5576} },
	[5832] = { n = "Silenciatruenos", en = "Thunderstomp", l = 24, h = 24, e = false, m = 1413, sp = {{48.09,79.83}}, lt = {1206,5128,5133,5470,5575,6661} },
	[5834] = { n = "Azzere el Filo del Cielo", en = "Azzere the Skyblade", l = 25, h = 25, e = false, m = 1413, sp = {{44.83,64.1}}, lt = {1206,1705,4632,5575,5636,6375,6444,6826} },
	[5835] = { n = "Supervisor Asas", en = "Foreman Grills", l = 19, h = 19, e = false, m = 1413, sp = {{56.37,8.17}}, lt = {414,858,1179,1210,2455,2589,2592,6661} },
	[5836] = { n = "Ingeniero Giralesín", en = "Engineer Whirleygig", l = 19, h = 19, e = false, m = 1413, sp = {{56.23,8.79}}, lt = {814,858,1179,1210,2287,2455,2589,2592} },
	[5837] = { n = "Brazorroca", en = "Stonearm", l = 15, h = 15, e = false, m = 1413, sp = {{42.01,24.66}}, lt = {118,414,774,818,858,1179,1210,2287} },
	[5838] = { n = "Lanzarrota", en = "Brokespear", l = 17, h = 17, e = false, m = 1413, sp = {{57.12,41.17}}, lt = {818,858,1179,1206,1210,2287,2409,2455} },
	[5841] = { n = "Lanzapiedras", en = "Rocklance", l = 17, h = 17, e = true, m = 1413, sp = {{56.47,41.65}}, lt = {858,1179,2287,2409,2455,3393,4292,4345} },
	[5842] = { n = "Takk el Saltarín", en = "Takk the Leaper", l = 19, h = 19, e = true, m = 1413, sp = {{59.62,8.34}}, lt = {818,1206,1210,3180,4345,5055,5062,5124} },
	[5847] = { n = "Heggin Pelopiedra", en = "Heggin Stonewhisker", l = 24, h = 24, e = false, m = 1413, sp = {{47.05,83.96}}, lt = {929,1205,1206,2589,2592,2775,2881,3385} },
	[5848] = { n = "Malgin Cebadiz", en = "Malgin Barleybrew", l = 25, h = 25, e = false, m = 1413, sp = {{49.59,84.3}}, lt = {929,1205,1206,2589,2592,2593,2594,2595} },
	[5849] = { n = "Cavador Flamaforja", en = "Digger Flameforge", l = 24, h = 24, e = false, m = 1413, sp = {{47.54,85.49}}, lt = {929,1205,1206,1210,2589,2592,2771,2772} },
	[5851] = { n = "Capitán Gerogg Piemartillo", en = "Captain Gerogg Hammertoe", l = 27, h = 27, e = true, m = 1413, sp = {{49.55,83.86}}, lt = {929,1205,1705,2589,2592,3385,4306,4542} },
	[5859] = { n = "Hagg Taurruina", en = "Hagg Taurenbane", l = 26, h = 26, e = true, m = 1413, sp = {{43.18,83.17}}, lt = {422,929,1205,1206,1529,1705,2589,2592} },
	[5863] = { n = "Geosacerdote Gukk'rok", en = "Geopriest Gukk'rok", l = 19, h = 19, e = false, m = 1413, sp = {{43.18,52.09}}, lt = {818,858,1179,1206,1210,2455,2589,2592} },
	[5864] = { n = "Suingart Cuerolanza", en = "Swinegart Spearhide", l = 22, h = 22, e = true, m = 1413, sp = {{40.75,45.17}}, lt = {929,1205,1206,1705,2589,2592,3385,4292} },
	[5865] = { n = "Dishu", en = "Dishu", l = 13, h = 13, e = false, m = 1413, sp = {{49.6,15.84}}, lt = {765,774,818,2657,4813,4893,5134,5573} },
	[5912] = { n = "Dragón feérico descarriado", en = "Deviate Faerie Dragon", l = 20, h = 20, e = true, m = 279, sp = {{46.2,36.4}}, lt = {3176,3177,5243,5635,6443,6470,6471,6632} },
	[5915] = { n = "Hermano Roblecuervo", en = "Brother Ravenoak", l = 29, h = 29, e = true, m = 1442, sp = {{28.05,12.23}}, lt = {929,1205,2592,3385,4306,4538} },
	[5916] = { n = "Centinela Amarassan", en = "Sentinel Amarassan", l = 27, h = 27, e = true, m = 1442, sp = {{35.25,15.04}}, lt = {929,1205,1206,1529,1705,2453,2592,3385} },
	[5928] = { n = "Alapenas", en = "Sorrow Wing", l = 27, h = 27, e = true, m = 1442, sp = {{49.27,36.18}}, lt = {4633,5136,5137,5635,5637,5808} },
	[5930] = { n = "Hermana Riven", en = "Sister Riven", l = 28, h = 28, e = true, m = 1442, sp = {{29.64,69.43}}, lt = {929,1205,1529,1705,2592,3385,3396,3770} },
	[5931] = { n = "Supervisor Rigger", en = "Foreman Rigger", l = 24, h = 24, e = true, m = 1442, sp = {{66.69,52.33}}, lt = {422,929,1205,1210,1705,2589,2592,3385} },
	[5932] = { n = "Capataz Latimillo", en = "Taskmaster Whipfang", l = 22, h = 22, e = true, m = 1442, sp = {{64.55,54.19}}, lt = {929,1205,1206,2589,2592,2770,2835,3385} },
	[5933] = { n = "Achellios el Desterrado", en = "Achellios the Banished", l = 31, h = 31, e = false, m = 1441, sp = {{22.73,37.46}}, lt = {1529,1708,1710,2592,2770,2771,2772,3385} },
	[5934] = { n = "Cuorevaja", en = "Heartrazor", l = 32, h = 32, e = true, m = 1441, sp = {{16.75,41.49}}, lt = {1529,1686,1687,1705,1725,3864,3870,4634} },
	[5935] = { n = "Ojohierro el Invencible", en = "Ironeye the Invincible", l = 37, h = 37, e = true, m = 1441, sp = {{87.19,78.39}}, lt = {1529,1701,1702,1725,4093,4636,5637,7453} },
	[5937] = { n = "Aguijón vil", en = "Vile Sting", l = 35, h = 35, e = true, m = 1441, sp = {{70.55,72.92}}, lt = {1288,1529,1705,4634,4867,4872,5794,12037} },
	[6118] = { n = "Fantasma de Varo'then", en = "Varo'then's Ghost", l = 48, h = 48, e = false, m = 1447, sp = {{13.23,74.2}}, lt = {1645,3858,3928,4338,4608,4638,6149,7909} },
	[6228] = { n = "Embajador Hierro Negro", en = "Dark Iron Ambassador", l = 33, h = 33, e = true, m = 226, sp = {{25.2,38.6}}, lt = {1705,2592,4306,4633,9308,9455,9456,9457} },
	[6488] = { n = "Campeón caído", en = "Fallen Champion", l = 33, h = 33, e = true, m = 302, sp = {{85.4,32.2}}, lt = {4306,7689,7690,7691,10328} },
	[6489] = { n = "Dorsacerado", en = "Ironspine", l = 33, h = 33, e = true, m = 302, sp = {{85.4,32.2}}, lt = {4306,7686,7687,7688,10328} },
	[6490] = { n = "Azshir el Insomne", en = "Azshir the Sleepless", l = 33, h = 33, e = true, m = 302, sp = {{85.4,32.2}}, lt = {4306,7708,7709,7731} },
	[6581] = { n = "Matriarca ravasaurio", en = "Ravasaur Matriarch", l = 50, h = 50, e = false, m = 1449, sp = {{62.35,65.95}}, lt = {3395,4587,4588,8146,11018,11116,11477,12184} },
	[6582] = { n = "Madrezarpa Zavas", en = "Clutchmother Zavas", l = 54, h = 54, e = false, m = 1449, sp = {{48.73,85.35}}, lt = {6300,6302,11018,11116} },
	[6583] = { n = "Gruff", en = "Gruff", l = 57, h = 57, e = true, m = 1449, sp = {{38.05,75.5}}, lt = {5128,5133,5759,11018,11116,11188} },
	[6584] = { n = "Rey Mosh", en = "King Mosh", l = 60, h = 60, e = true, m = 1449, sp = {{35.3,35.99}}, lt = {4587,4588,7910,8146,11018,11116,13490,20015} },
	[6585] = { n = "Uhk'loc", en = "Uhk'loc", l = 53, h = 53, e = false, m = 1449, sp = {{68.48,12.66}}, lt = {2799,4099,4558,5758,7909,7910,10620,11018} },
	[6646] = { n = "Monnos el Viejo", en = "Monnos the Elder", l = 54, h = 54, e = true, m = 1447, sp = {{76.2,25.38}}, lt = {4552,4554,7909,7912,8150} },
	[6647] = { n = "Magistrix Yelmalcón", en = "Magister Hawkhelm", l = 52, h = 52, e = false, m = 1447, sp = {{58.46,30.89}}, lt = {1645,3927,4608,7909,7910,8766,8953,9295} },
	[6648] = { n = "Antilos", en = "Antilos", l = 50, h = 50, e = false, m = 1447, sp = {{16.6,54.1}}, lt = {4590,5117,5829,7910,8146,11417,11418,13463} },
	[6649] = { n = "Lady Sesspira", en = "Lady Sesspira", l = 51, h = 51, e = false, m = 1447, sp = {{35.39,55.69}}, lt = {5498,5758,7909,7910,7973,8766,8839,8959} },
	[6650] = { n = "General Colmiterror", en = "General Fangferror", l = 51, h = 51, e = false, m = 1447, sp = {{41.31,53.96}}, lt = {1645,3928,4603,6149,7973,10604} },
	[6651] = { n = "Guardián Gruñefuria", en = "Gatekeeper Rageroar", l = 50, h = 50, e = false, m = 1447, sp = {{38.27,32.08}}, lt = {1645,3928,4338,4602,6149} },
	[6652] = { n = "Maestro Pavoria", en = "Master Feardred", l = 52, h = 52, e = false, m = 1447, sp = {{66.3,16.72}}, lt = {8766,8952,12662,13443,13446,14047,14256,14467} },
	[7015] = { n = "Flagglemurk el Cruel", en = "Flagglemurk the Cruel", l = 16, h = 16, e = false, m = 4657, sp = {{36.75,67.6}}, lt = {730,858,1179,1468,2589,5523,5785,6289} },
	[7016] = { n = "Lady Vespira", en = "Lady Vespira", l = 22, h = 22, e = false, m = 4657, sp = {{57.81,21.43}}, lt = {858,1179,2589,5523,6289} },
	[7017] = { n = "Lord Sesgapecados", en = "Lord Sinslayer", l = 16, h = 16, e = false, m = 4657, sp = {{56.6,34.94}}, lt = {774,818,856,858,1179,1210,1738,1739} },
	[7057] = { n = "Maestro de excavación Palatiro", en = "Digmaster Shovelphlange", l = 38, h = 38, e = true, m = 1418, sp = {{34.6,23.1}}, lt = {1708,3771,4306,4338} },
	[7104] = { n = "Dessecus", en = "Dessecus", l = 56, h = 56, e = true, m = 3457, sp = {{57.76,22.33}}, lt = {765,785,2447,2449,2450,2452,3358,3818} },
	[7137] = { n = "Immolatus", en = "Immolatus", l = 56, h = 56, e = true, m = 3457, sp = {{43.12,41.39}}, lt = {4784,5759,7067,7075,7076,7910,7912,8150} },
	[7895] = { n = "Embajador Sanguinarius", en = "Ambassador Bloodrage", l = 36, h = 36, e = true, m = 1413, sp = {{47.74,90.74}}, lt = {1529,1708,1710,3827,4306,4338,4539,7909} },
	[8199] = { n = "Líder de guerra Krazzilak", en = "Warleader Krazzilak", l = 45, h = 45, e = true, m = 1446, sp = {{38.79,21.72}}, lt = {1520,1645,3928,4306,4338,4599,4637,6149} },
	[8200] = { n = "Jin'Zallah el Arenero", en = "Jin'Zallah the Sandbringer", l = 46, h = 46, e = true, m = 1446, sp = {{36.57,24.61}}, lt = {1520,1645,3928,4306,4338,4599,6149,8151} },
	[8201] = { n = "Omgorn el Perdido", en = "Omgorn the Lost", l = 50, h = 50, e = false, m = 1446, sp = {{38.72,55.59}}, lt = {1645,3928,4338,4599,4638,6149,7909,7910} },
	[8202] = { n = "Cyclok el Loco", en = "Cyclok the Mad", l = 48, h = 48, e = false, m = 1446, sp = {{41.26,54.7}}, lt = {1645,4338,4599,6149} },
	[8203] = { n = "Kregg Volcayecto", en = "Kregg Keelhaul", l = 47, h = 47, e = false, m = 1446, sp = {{73.22,48.71}}, lt = {1645,3928,4338,4599,4638,6149,7910,8623} },
	[8204] = { n = "Soriid el Devorador", en = "Soriid the Devourer", l = 50, h = 50, e = false, m = 1446, sp = {{34.07,44.72}}, lt = {4638,6300,6302} },
	[8205] = { n = "Haarka el Voraz", en = "Haarka the Ravenous", l = 50, h = 50, e = false, m = 1446, sp = {{53.3,73.79}}, lt = {6300,6302,8623} },
	[8206] = { n = "Soul of Tanaris", en = "Soul of Tanaris", l = 51, h = 51, e = true, m = 1446, sp = {{52.4,46.1}}, lt = {} },
	[8207] = { n = "Pájaro de fuego superior", en = "Greater Firebird", l = 46, h = 46, e = false, m = 1446, sp = {{49.39,36.04}}, lt = {1464,3404,4638,5117,5829,8146,11417,11418} },
	[8208] = { n = "Llagapata mortífera", en = "Murderous Blisterpaw", l = 43, h = 43, e = false, m = 1446, sp = {{52.32,33.29}}, lt = {4583,4584,7909,8146,9439,12037,12203,12208} },
	[8210] = { n = "Filogarra", en = "Razortalon", l = 44, h = 44, e = false, m = 1425, sp = {{37.06,45.33}}, lt = {1645,3818,3928,4599,5117,5636,6149,8146} },
	[8211] = { n = "Viejo Saltariscos", en = "Old Cliff Jumper", l = 42, h = 42, e = false, m = 1425, sp = {{11.92,53.7}}, lt = {4583,4584,4637,8146,12203,12208,13068} },
	[8212] = { n = "El Rik", en = "The Reak", l = 49, h = 49, e = false, m = 1425, sp = {{58.88,43.12}}, lt = {765,3669,3670,3671,3673,3674,3676,7296} },
	[8213] = { n = "Espaldacerada", en = "Ironback", l = 51, h = 51, e = false, m = 1425, sp = {{81.48,49.19}}, lt = {3712,3820,4500,4555,4556,4603,5758,7973} },
	[8214] = { n = "Jalinde Dracoestío", en = "Jalinde Summerdrake", l = 49, h = 49, e = false, m = 1425, sp = {{30.25,47.95}}, lt = {1645,3928,4338,4602,6149,7910,8704,15737} },
	[8215] = { n = "Grimungus", en = "Grimungous", l = 50, h = 50, e = true, m = 1425, sp = {{70.19,55.38}}, lt = {4552,4554,4638,7912,7990,8150,10320} },
	[8216] = { n = "Retherokk el Rabioso", en = "Retherokk the Berserker", l = 48, h = 48, e = false, m = 1425, sp = {{50.54,64.13}}, lt = {1520,1645,3858,3928,4338,4599,4638,6149} },
	[8217] = { n = "Mith'rethis el Encantador", en = "Mith'rethis the Enchanter", l = 52, h = 52, e = true, m = 1425, sp = {{63.86,77.61}}, lt = {1520,1645,3928,4338,4500,4599,5758,6149} },
	[8218] = { n = "Blancorazón el Acechador", en = "Witherheart the Stalker", l = 45, h = 45, e = false, m = 1425, sp = {{33.12,70.29}}, lt = {1520,1645,3395,3928,4306,4338,4599,4637} },
	[8219] = { n = "Matagallinas Zul'arek", en = "Zul'arek Hatefowler", l = 43, h = 43, e = false, m = 1425, sp = {{32.42,56.9}}, lt = {1520,1645,3928,4306,4338,4599,4637,6149} },
	[8277] = { n = "Rekk'tilac", en = "Rekk'tilac", l = 48, h = 48, e = false, m = 1427, sp = {{61.92,73.23}}, lt = {1074,4337,4585,7910,10285,12205,14227} },
	[8278] = { n = "Smoldar", en = "Smoldar", l = 50, h = 50, e = false, m = 1427, sp = {{29.53,62.44}}, lt = {2776,4552,4554,4784,7067,7075,7076,7848} },
	[8279] = { n = "Gólem de guerra defectuoso", en = "Faulty War Golem", l = 46, h = 46, e = false, m = 1427, sp = {{45.88,67.84}}, lt = {4552,4554,4638,7909,7912,8150,9295} },
	[8280] = { n = "Shleipnarr", en = "Shleipnarr", l = 47, h = 47, e = false, m = 1427, sp = {{58.57,56.55}}, lt = {5119,5120} },
	[8281] = { n = "Escaldar", en = "Scald", l = 49, h = 49, e = false, m = 1427, sp = {{51.15,46.84}}, lt = {3857,4787,7068,7077,11129} },
	[8282] = { n = "Alto señor Mastrogonde", en = "Highlord Mastrogonde", l = 51, h = 51, e = true, m = 1427, sp = {{14.54,37.2}}, lt = {1645,2772,3827,3858,3927,3928,4338,4500} },
	[8283] = { n = "Maestro de esclavos Negrozón", en = "Slave Master Blackheart", l = 50, h = 50, e = false, m = 1427, sp = {{42.43,23.1}}, lt = {1645,1710,3358,3818,3827,3927,3928,4338} },
	[8296] = { n = "Mojo el Retorcido", en = "Mojo the Twisted", l = 48, h = 48, e = false, m = 1419, sp = {{45.18,16.02}}, lt = {1645,3928,4338,4599,4638,6149,10315} },
	[8297] = { n = "Magronos el Implacable", en = "Magronos the Unyielding", l = 56, h = 56, e = false, m = 1419, sp = {{47.2,47.14}}, lt = {7910,8244,8766,8952,10593,13443,13446,14047} },
	[8298] = { n = "Akubar el Vidente", en = "Akubar the Seer", l = 54, h = 54, e = false, m = 1419, sp = {{51.31,53.12}}, lt = {4500,5758,7909,7910,7911,8766,8838,8952} },
	[8299] = { n = "Escupetripas", en = "Spiteflayer", l = 52, h = 52, e = false, m = 1419, sp = {{58.75,42.61}}, lt = {1464,1645,3404,3927,3928,4625,5117,6149} },
	[8300] = { n = "Devastatia", en = "Ravage", l = 51, h = 51, e = false, m = 1419, sp = {{58.63,35.63}}, lt = {4500,4583,4584,5758,8146,8391,12037,12203} },
	[8301] = { n = "Clack el Atracador", en = "Clack the Reaver", l = 53, h = 53, e = false, m = 1419, sp = {{48.33,38.69}}, lt = {4867,4872,8393,12037,16220,19441,19933,19934} },
	[8302] = { n = "Ojo de la Muerte", en = "Deatheye", l = 49, h = 49, e = false, m = 1419, sp = {{50.17,20.72}}, lt = {4092,4093,4638,7910,8146,8244,8394,10320} },
	[8303] = { n = "Gruñón", en = "Grunter", l = 50, h = 50, e = false, m = 1419, sp = {{56.08,31.13}}, lt = {2295,3403,8392} },
	[8304] = { n = "Desdeñamiedos", en = "Dreadscorn", l = 57, h = 57, e = false, m = 1419, sp = {{41.32,38.73}}, lt = {5759,7909,8766,8952,13443,13446,14047,14489} },
	[8503] = { n = "Gibblewilt", en = "Gibblewilt", l = 11, h = 11, e = false, m = 1426, sp = {{27.37,36.21}}, lt = {118,159,818,1210,2589,3083,3084,4346} },
	[8660] = { n = "El Evalcharr", en = "The Evalcharr", l = 48, h = 48, e = false, m = 1447, sp = {{17.87,65.6}}, lt = {6444,6826,7910} },
	[8923] = { n = "Panzor el Invencible", en = "Panzor the Invincible", l = 57, h = 57, e = true, m = 1584, sp = {{29.2,38.4}}, lt = {4552,4554,7912,8150,11129,11370,11446,11785} },
	[8924] = { n = "El Behemoth", en = "The Behemoth", l = 50, h = 50, e = true, m = 242, sp = {{29.2,38.4}}, lt = {4638,7910,8766,8952,11208,11446,11732,11754} },
	[8976] = { n = "Hematos", en = "Hematos", l = 60, h = 60, e = true, m = 1428, sp = {{22.38,60.03}}, lt = {4460,4557,7909,7910,8146,16220} },
	[8978] = { n = "Thauris Balgarr", en = "Thauris Balgarr", l = 57, h = 57, e = false, m = 1428, sp = {{54.2,39.11}}, lt = {4500,5759,8766,8950,10620,13444,13446,14047} },
	[8979] = { n = "Gruklash", en = "Gruklash", l = 59, h = 59, e = false, m = 1428, sp = {{42.14,54.77}}, lt = {5759,7910,8766,8952,12695,13444,13446,14047} },
	[8981] = { n = "Atracador estropeado", en = "Malfunctioning Reaver", l = 56, h = 56, e = false, m = 1428, sp = {{79.17,29.71}}, lt = {4552,4554,5759,7909,7912,8150,8838,11266} },
	[9024] = { n = "Piromántico Fruto del Saber", en = "Pyromancer Loregrain", l = 52, h = 52, e = true, m = 1584, sp = {{29.2,38.4}}, lt = {11207,11446,11747,11748,11749,11750,14047,18945} },
	[9025] = { n = "Lord Roccor", en = "Lord Roccor", l = 51, h = 51, e = true, m = 1584, sp = {{29.2,38.4}}, lt = {8150,11129,11446,11630,11631,11632,11813,18945} },
	[9041] = { n = "Guarda Stilgiss", en = "Warder Stilgiss", l = 56, h = 56, e = true, m = 1584, sp = {{29.2,38.4}}, lt = {11078,11446,11782,11783,11784,14047,18945,22241} },
	[9042] = { n = "Verek", en = "Verek", l = 55, h = 55, e = true, m = 1584, sp = {{29.2,38.4}}, lt = {4583,4584,11446,11755,12203,12208,18945,22242} },
	[9046] = { n = "Intendente Escudo del Estigma", en = "Scarshield Quartermaster", l = 55, h = 55, e = true, m = 250, sp = {{29.2,38.4}}, lt = {5758,7909,7910,8766,8952,11732,11733,11734} },
	[9217] = { n = "Señor Magus Cumbrerroca", en = "Spirestone Lord Magus", l = 58, h = 58, e = true, m = 250, sp = {{29.2,38.4}}, lt = {12219,13261,13282,13283,14047,16250,21982,22528} },
	[9218] = { n = "Señor de batalla Cumbrerroca", en = "Spirestone Battle Lord", l = 58, h = 58, e = true, m = 250, sp = {{29.2,38.4}}, lt = {12219,13284,13285,14047,21982,22528} },
	[9219] = { n = "Carnicero Cumbrerroca", en = "Spirestone Butcher", l = 57, h = 57, e = true, m = 250, sp = {{29.2,38.4}}, lt = {12219,12608,13286,14047,16250,21982,22528} },
	[9417] = { n = "Sleeping Dragon", en = "Sleeping Dragon", l = 60, h = 60, e = true, m = 1433, sp = {{62.8,74.2}}, lt = {} },
	[9596] = { n = "Bannok Hacha Macabra", en = "Bannok Grimaxe", l = 59, h = 59, e = true, m = 250, sp = {{29.2,38.4}}, lt = {12219,12621,12634,12637,12838,14047,16250,22138} },
	[9602] = { n = "Hahk'Zor", en = "Hahk'Zor", l = 54, h = 54, e = false, m = 1428, sp = {{80.54,47.97}}, lt = {1529,2772,2776,3858,5758,7910,8766,8952} },
	[9604] = { n = "Gorgon'och", en = "Gorgon'och", l = 54, h = 54, e = false, m = 1428, sp = {{80.46,41.45}}, lt = {5758,7909,8766,8952,13443,13446,14047} },
	[9718] = { n = "Ghok Bashguud", en = "Ghok Bashguud", l = 59, h = 59, e = true, m = 250, sp = {{29.2,38.4}}, lt = {12219,13198,13203,13204,14047,16250,22138,22528} },
	[9736] = { n = "Intendente Zigris", en = "Quartermaster Zigris", l = 59, h = 59, e = true, m = 250, sp = {{29.2,38.4}}, lt = {12219,12835,13252,13253,13444,13446,14047,16250} },
	[10077] = { n = "Faucemuerte", en = "Deathmaw", l = 53, h = 53, e = false, m = 1428, sp = {{87.36,50.45}}, lt = {4500,4583,4584,5758,7910,8146,11467,12203} },
	[10078] = { n = "Chispa terrorífica", en = "Terrorspark", l = 55, h = 55, e = false, m = 1428, sp = {{41.86,46.53}}, lt = {7909,7910,8146,8766,8952,11224,12662,12682} },
	[10080] = { n = "Sandarr Asaltadunas", en = "Sandarr Dunereaver", l = 45, h = 45, e = true, m = 219, sp = {{39.2,19.4}}, lt = {1520,1645,3928,4306,4338,4599,8151,8623} },
	[10081] = { n = "Ánima de polvo", en = "Dustwraith", l = 45, h = 45, e = true, m = 219, sp = {{39.2,19.4}}, lt = {1520,1645,3864,3928,4306,4338,4599,4637} },
	[10082] = { n = "Zerillis", en = "Zerillis", l = 45, h = 45, e = true, m = 219, sp = {{39.2,19.4}}, lt = {1520,1645,2040,3864,3869,3928,4306,4338} },
	[10119] = { n = "Volchan", en = "Volchan", l = 60, h = 60, e = true, m = 1428, sp = {{74.3,37.82}}, lt = {3857,4500,4787,5759,7067,7068,7075,7076} },
	[10196] = { n = "General Colbatann", en = "General Colbatann", l = 57, h = 57, e = true, m = 1452, sp = {{55.34,49.81}}, lt = {4500,5759,7909,7910,8766,8952,13444,13446} },
	[10197] = { n = "Mezzir el Aullador", en = "Mezzir the Howler", l = 55, h = 55, e = false, m = 1452, sp = {{45.03,37.37}}, lt = {4500,5758,7909,7910,7993,8146,8390,8766} },
	[10198] = { n = "Kashoch el Atracador", en = "Kashoch the Reaver", l = 60, h = 60, e = true, m = 1452, sp = {{63.36,70.19}}, lt = {5759,7909,7910,8766,8952,12334,13446} },
	[10199] = { n = "Pardo Patanieve", en = "Grizzle Snowpaw", l = 59, h = 59, e = false, m = 1452, sp = {{66.9,35.6}}, lt = {5759,7909,7910,8766,8953,12820,13444,13446} },
	[10200] = { n = "Rak'shiri", en = "Rak'shiri", l = 57, h = 57, e = false, m = 1452, sp = {{51.13,10.81}}, lt = {1645,1688,3927,4580,4581,4623,5759,7909} },
	[10201] = { n = "Lady Hederine", en = "Lady Hederine", l = 61, h = 61, e = true, m = 1452, sp = {{65.03,80.28}}, lt = {5760,7910,8766,8948,12662,13444,13446,14047} },
	[10202] = { n = "Azurous", en = "Azurous", l = 59, h = 59, e = true, m = 1452, sp = {{66.74,53.81}}, lt = {4460,4557,5759,7909,7910,8146,13467,15755} },
	[10203] = { n = "Berylgos", en = "Berylgos", l = 62, h = 62, e = true, m = 1452, sp = {{55.2,62.8}}, lt = {} },
	[10236] = { n = "Wep", en = "Wep", l = 33, h = 33, e = false, m = 1413, sp = {{44.5,12.2}}, lt = {} },
	[10237] = { n = "Yor", en = "Yor", l = 35, h = 35, e = false, m = 1413, sp = {{45.1,13.8}}, lt = {} },
	[10238] = { n = "Staggon", en = "Staggon", l = 35, h = 35, e = false, m = 1413, sp = {{43.9,14.1}}, lt = {} },
	[10239] = { n = "Tepolar", en = "Tepolar", l = 38, h = 38, e = true, m = 1413, sp = {{44.8,15.0}}, lt = {} },
	[10263] = { n = "Guardia vil ardiente", en = "Burning Felguard", l = 56, h = 57, e = true, m = 250, sp = {{29.2,38.4}}, lt = {8948,12662,13181,13182,14047} },
	[10356] = { n = "Bayne", en = "Bayne", l = 10, h = 10, e = false, m = 1420, sp = {{39.9,42.16}}, lt = {765,774,818,2447,2672,3299,3300} },
	[10357] = { n = "Ressan el Agujas", en = "Ressan the Needler", l = 11, h = 11, e = false, m = 1420, sp = {{42.86,67.57}}, lt = {765,774,818,4865,6293,6296,6716,7073} },
	[10358] = { n = "Sombra de Felicent", en = "Fellicent's Shade", l = 12, h = 12, e = false, m = 1420, sp = {{76.96,60.35}}, lt = {118,159,774,818,1210,2589,2835,4346} },
	[10359] = { n = "Sri'skulk", en = "Sri'skulk", l = 13, h = 13, e = false, m = 1420, sp = {{88.16,51.44}}, lt = {818,1475,1476,5465} },
	[10376] = { n = "Colmillo de cristal", en = "Crystal Fang", l = 60, h = 60, e = true, m = 250, sp = {{29.2,38.4}}, lt = {1074,4337,4585,10285,12205,13184,13185,13218} },
	[10393] = { n = "Skul", en = "Skul", l = 58, h = 58, e = true, m = 317, sp = {{27.4,11.6}}, lt = {12843,13394,13395,13396,14047,22526} },
	[10509] = { n = "Jed Vigía de las Runas", en = "Jed Runewatcher", l = 59, h = 59, e = true, m = 250, sp = {{29.2,38.4}}, lt = {12604,12605,12930,14047,16250,22138} },
	[10558] = { n = "Cantachimeneas Forresten", en = "Hearthsinger Forresten", l = 57, h = 57, e = true, m = 317, sp = {{27.4,11.6}}, lt = {12843,13174,13378,13379,13383,13384,14047,16682} },
	[10559] = { n = "Lady Vespia", en = "Lady Vespia", l = 22, h = 22, e = false, m = 3836, sp = {{13.63,24.73}}, lt = {929,1205,1206,2881,2996,3385,3820,4538} },
	[10584] = { n = "Urok Aullasino", en = "Urok Doomhowl", l = 60, h = 60, e = true, m = 250, sp = {{29.2,38.4}}, lt = {12219,12712,13178,13258,13259,14047,18784,21982} },
	[10639] = { n = "Rorgish Jowl", en = "Rorgish Jowl", l = 25, h = 25, e = false, m = 3836, sp = {{35.82,36.61}}, lt = {929,1205,1206,1705,2589,2592,3385,4306} },
	[10640] = { n = "Pataroble", en = "Oakpaw", l = 27, h = 27, e = false, m = 3836, sp = {{56.01,62.75}}, lt = {929,1205,1206,2592,3385,4306,4538,16645} },
	[10641] = { n = "Quebrarramas", en = "Branch Snapper", l = 25, h = 25, e = false, m = 3836, sp = {{46.51,44.27}}, lt = {765,785,929,1205,2447,2449,2450,2452} },
	[10642] = { n = "Eck'alom", en = "Eck'alom", l = 27, h = 27, e = false, m = 3836, sp = {{52.76,70.05}}, lt = {4633,5446,5447,5448,5451,7070,9451,16645} },
	[10643] = { n = "Aletereje", en = "Mugglefin", l = 23, h = 23, e = false, m = 3836, sp = {{19.38,42.73}}, lt = {730,929,1205,1210,1468,3385,5504,5524} },
	[10644] = { n = "Aullanieblas", en = "Mist Howler", l = 22, h = 22, e = false, m = 3836, sp = {{26.8,18.35}}, lt = {1015,1210,1705,2450,3301,3402,5635,11039} },
	[10647] = { n = "Príncipe Raze", en = "Prince Raze", l = 32, h = 32, e = false, m = 3836, sp = {{81.56,48.51}}, lt = {929,1205,2592,3385,3770,4306,4634,5461} },
	[10808] = { n = "Timmy el Cruel", en = "Timmy the Cruel", l = 58, h = 58, e = true, m = 317, sp = {{27.4,11.6}}, lt = {6530,12843,13174,13400,13401,13402,13403,14047} },
	[10809] = { n = "Pidrespina", en = "Stonespine", l = 60, h = 60, e = true, m = 317, sp = {{27.4,11.6}}, lt = {4552,4554,12843,13397,13399,13954} },
	[10817] = { n = "Duggan Martillo Salvaje", en = "Duggan Wildhammer", l = 55, h = 55, e = false, m = 4274, sp = {{39.29,70.49}}, lt = {5758,8766,8950,13443,13446,13466,14047} },
	[10818] = { n = "Death Knight Soulbearer", en = "Death Knight Soulbearer", l = 43, h = 43, e = false, m = 317, sp = {{27.4,11.6}}, lt = {} },
	[10819] = { n = "Baron Bloodbane", en = "Baron Bloodbane", l = 45, h = 45, e = false, m = 317, sp = {{27.4,11.6}}, lt = {} },
	[10820] = { n = "Duque Atracador", en = "Duke Ragereaver", l = 45, h = 45, e = false, m = 317, sp = {{27.4,11.6}}, lt = {4608,12808} },
	[10821] = { n = "Hed'mush el Podrido", en = "Hed'mush the Rotting", l = 57, h = 57, e = false, m = 4274, sp = {{55.35,24.91}}, lt = {8766,8952,12843,13444,13446,14047} },
	[10822] = { n = "Señor de la guerra Thresh'jin", en = "Warlord Thresh'jin", l = 58, h = 58, e = false, m = 4274, sp = {{72.22,13.98}}, lt = {7910,8766,8952,12804,13444,13446,14047,15757} },
	[10823] = { n = "Ramurdimbre Zul'Brin", en = "Zul'Brin Warpbranch", l = 59, h = 59, e = false, m = 4274, sp = {{72.19,16.91}}, lt = {8766,8952,12804,13444,13446,14047,14478} },
	[10824] = { n = "Señor forestal Lanzalcón", en = "Ranger Lord Hawkspear", l = 60, h = 60, e = false, m = 4274, sp = {{52.16,18.48}}, lt = {5759,8766,8953,13444,13446,14047,19261,19279} },
	[10825] = { n = "Gish el Inamovible", en = "Gish the Unmoving", l = 56, h = 56, e = false, m = 4274, sp = {{74.33,52.99}}, lt = {4552,4554,7910,8146,12843} },
	[10826] = { n = "Lord Hoz Oscura", en = "Lord Darkscythe", l = 57, h = 57, e = false, m = 4274, sp = {{26.23,32.8}}, lt = {7972,8766,8948,12808,12843,13444,13446,14047} },
	[10827] = { n = "Portavoz de la muerte Selendre", en = "Deathspeaker Selendre", l = 56, h = 56, e = false, m = 4274, sp = {{85.65,45.27}}, lt = {3827,5759,8766,8839,8932,8948,8950,8953} },
	[10828] = { n = "Alta general Abbendis", en = "High General Abbendis", l = 59, h = 59, e = true, m = 4274, sp = {{88.51,86.51}}, lt = {5759,7909,7910,8766,8932,8952,13444,13446} },
	[11447] = { n = "Mushgog", en = "Mushgog", l = 60, h = 60, e = true, m = 234, sp = {{60.2,31.4}}, lt = {10286,13463,13464,13465,13468} },
	[11497] = { n = "El Razza", en = "The Razza", l = 60, h = 60, e = true, m = 234, sp = {{60.2,31.4}}, lt = {} },
	[11498] = { n = "Skarr el Inquebrantable", en = "Skarr the Unbreakable", l = 58, h = 58, e = true, m = 234, sp = {{60.2,31.4}}, lt = {} },
	[11580] = { n = "Kelemis the Lifeless", en = "Kelemis the Lifeless", l = 41, h = 41, e = false, m = 1443, sp = {{58.2,49.5}}, lt = {} },
	[11688] = { n = "Centauro maldito", en = "Cursed Centaur", l = 43, h = 43, e = false, m = 1443, sp = {{30.36,60.18}}, lt = {4306,4338,4637,7909,17684} },
	[12037] = { n = "Ursol'lok", en = "Ursol'lok", l = 31, h = 31, e = false, m = 3836, sp = {{83.37,48.51}}, lt = {1529,2450,2940,3702,3730,5635,5637,11406} },
	[12116] = { n = "Sacerdotisa de Elune", en = "Priestess of Elune", l = 1, h = 1, e = true, m = 1459, sp = {{39.6,81.2}}, lt = {} },
	[12237] = { n = "Meshlok el Cosechador", en = "Meshlok the Harvester", l = 48, h = 48, e = true, m = 280, sp = {{29.4,62.5}}, lt = {17684,17741,17742,17767} },
	[12431] = { n = "Mandisangre", en = "Gorefang", l = 13, h = 13, e = false, m = 4811, sp = {{59.53,7.64}}, lt = {765,774,818,1210,2672,2770,2835,3164} },
	[12432] = { n = "Viejo Malafauce", en = "Old Vicejaw", l = 14, h = 14, e = false, m = 4811, sp = {{53.85,51.93}}, lt = {818,1210,2770,2835,2881,2940,3169,3170} },
	[12433] = { n = "Krethis Tejeumbra", en = "Krethis Shadowspinner", l = 15, h = 15, e = false, m = 4811, sp = {{35.7,8.25}}, lt = {774,818,1210,1475,2770,2771,2835,3167} },
	[13896] = { n = "Barbascamas", en = "Scalebeard", l = 52, h = 52, e = true, m = 1447, sp = {{52.59,47.37}}, lt = {3712,3914,4555,4556,5500,5758,7909,7910} },
	[13977] = { n = "Gash'nak the Cannibal", en = "Gash'nak the Cannibal", l = 1, h = 1, e = true, m = 1459, sp = {{39.6,81.2}}, lt = {} },
	[14016] = { n = "Ushalac the Gloomdweller", en = "Ushalac the Gloomdweller", l = 1, h = 1, e = true, m = 1459, sp = {{39.6,81.2}}, lt = {} },
	[14018] = { n = "Rezrelek", en = "Rezrelek", l = 1, h = 1, e = true, m = 1459, sp = {{39.6,81.2}}, lt = {} },
	[14019] = { n = "Tatterhide", en = "Tatterhide", l = 1, h = 1, e = true, m = 1459, sp = {{39.6,81.2}}, lt = {} },
	[14221] = { n = "Gravis Nudocorredizo", en = "Gravis Slipknot", l = 36, h = 36, e = false, m = 1416, sp = {{58.2,41.91}}, lt = {1707,1708,1710,2453,3358,3505,3827,4306} },
	[14222] = { n = "Araga", en = "Araga", l = 35, h = 35, e = false, m = 1416, sp = {{30.2,72.11}}, lt = {1686,1687,4865,5137,5637,8146} },
	[14223] = { n = "Cascarrabias Ben", en = "Cranky Benj", l = 32, h = 32, e = false, m = 1416, sp = {{37.29,19.83}}, lt = {3712,4555,4556,5498,5500,5504,5524,6308} },
	[14224] = { n = "7:XT", en = "7:XT", l = 41, h = 41, e = false, m = 1418, sp = {{55.07,83.62}}, lt = {1645,3928,4306,4338,4601,4637,6149,7191} },
	[14225] = { n = "Príncipe Kellen", en = "Prince Kellen", l = 33, h = 33, e = false, m = 1443, sp = {{78.93,21.25}}, lt = {1708,1710,2592,3385,3771,3858,4306,4338} },
	[14226] = { n = "Kaskk", en = "Kaskk", l = 40, h = 40, e = false, m = 1443, sp = {{51.15,86.13}}, lt = {1708,1710,4306,4338,4607,6252} },
	[14227] = { n = "Hissperak", en = "Hissperak", l = 37, h = 37, e = false, m = 1443, sp = {{52.86,50.08}}, lt = {1701,1702,4093,5637,8146,11386} },
	[14228] = { n = "Mueca", en = "Giggler", l = 34, h = 34, e = false, m = 1443, sp = {{61.29,28.91}}, lt = {3402,4582,4634,5637,12037,12203} },
	[14229] = { n = "Filozante detestable", en = "Accursed Slitherblade", l = 35, h = 35, e = false, m = 1443, sp = {{42.17,19.01}}, lt = {1529,1708,1710,6362,7072,17057,17058} },
	[14230] = { n = "Ojo Ladrón", en = "Burgle Eye", l = 38, h = 38, e = false, m = 1445, sp = {{59.04,9.37}}, lt = {1708,1710,3827,4639,5785,5847,6362,17057} },
	[14231] = { n = "Drogoth el Vagabundo", en = "Drogoth the Roamer", l = 37, h = 37, e = false, m = 1445, sp = {{39.5,18.92}}, lt = {1708,1710,3357,3827,4607} },
	[14232] = { n = "Dardo", en = "Dart", l = 38, h = 38, e = false, m = 1445, sp = {{47.2,52.1}}, lt = {4461,4586,4587,5637,8146,12184} },
	[14233] = { n = "Rasgascama", en = "Ripscale", l = 39, h = 39, e = false, m = 1445, sp = {{46.5,53.8}}, lt = {770,3667,4636} },
	[14234] = { n = "Hayoc", en = "Hayoc", l = 41, h = 41, e = false, m = 1445, sp = {{52.02,62.87}}, lt = {5636,6444,6826} },
	[14235] = { n = "El Podrido", en = "The Rot", l = 43, h = 43, e = false, m = 1445, sp = {{48.1,51.4}}, lt = {3671,3676,10606,20763,20767} },
	[14236] = { n = "Señor Pescador", en = "Lord Angler", l = 44, h = 44, e = false, m = 1445, sp = {{57.83,61.62}}, lt = {1645,3928,5942,7973} },
	[14237] = { n = "Mocogusano", en = "Oozeworm", l = 42, h = 42, e = false, m = 1445, sp = {{36.03,63.07}}, lt = {3669,3676,7976} },
	[14266] = { n = "Shanda la Giratoria", en = "Shanda the Spinner", l = 19, h = 19, e = false, m = 1432, sp = {{78.09,52.35}}, lt = {818,1081,1206,1210,1475,2606,2700,2770} },
	[14267] = { n = "Emogg el Triturador", en = "Emogg the Crusher", l = 19, h = 19, e = true, m = 1432, sp = {{73.09,26.96}}, lt = {929,1205,1206,1210,2409,2589,2592,2607} },
	[14268] = { n = "Lord Condar", en = "Lord Condar", l = 16, h = 16, e = false, m = 1432, sp = {{77.74,74.93}}, lt = {556,818,1210,2450,2700,2770,2835,3882} },
	[14269] = { n = "Buscador Aqualon", en = "Seeker Aqualon", l = 21, h = 21, e = false, m = 1433, sp = {{60.09,56.24}}, lt = {1210,2700,2770,2835,7070,9451} },
	[14270] = { n = "Squiddic", en = "Squiddic", l = 19, h = 19, e = false, m = 1433, sp = {{38.69,56.29}}, lt = {730,858,1179,1206,1210,1467,1468,2455} },
	[14271] = { n = "Rompecostillas", en = "Ribchaser", l = 17, h = 17, e = false, m = 1433, sp = {{16.14,65.3}}, lt = {818,858,1013,1179,1206,1210,1212,2287} },
	[14272] = { n = "Llamagruños", en = "Snarlflare", l = 18, h = 18, e = false, m = 1433, sp = {{42.48,30.99}}, lt = {818,1206,1210,1221,2700,3176,3177,5635} },
	[14273] = { n = "Corapetra", en = "Boulderheart", l = 25, h = 25, e = false, m = 1433, sp = {{88.86,66.84}}, lt = {1206,1210,2450,2452,2771,2836,4632,5741} },
	[14275] = { n = "Tamra Pico Tormenta", en = "Tamra Stormpike", l = 28, h = 28, e = true, m = 3849, sp = {{70.68,78.05}}, lt = {929,1205,2592,3385,3693,4306,4542} },
	[14276] = { n = "Rasgabranquia", en = "Scargil", l = 30, h = 30, e = false, m = 3849, sp = {{29.08,73.56}}, lt = {929,1205,3385,3510,3716,5498,5500,5504} },
	[14277] = { n = "Lady Zephris", en = "Lady Zephris", l = 33, h = 33, e = false, m = 3849, sp = {{64.53,79.71}}, lt = {929,1205,1705,3385,3509,3820,4634,5504} },
	[14278] = { n = "Ro'Bark", en = "Ro'Bark", l = 28, h = 28, e = false, m = 3849, sp = {{65.72,60.15}}, lt = {929,1205,2592,3385,3770,4306,4633,5637} },
	[14279] = { n = "Trepazoso", en = "Creepthess", l = 24, h = 24, e = false, m = 3849, sp = {{38.6,58.37}}, lt = {878,1081,1206,1288,1705,2251,3182,3477} },
	[14280] = { n = "Gran Samras", en = "Big Samras", l = 27, h = 27, e = false, m = 3849, sp = {{86.03,39.93}}, lt = {2940,3476,3702,3730,4633,5635,11406,11407} },
	[14281] = { n = "Jimmy el Sangrador", en = "Jimmy the Bleeder", l = 23, h = 23, e = false, m = 1416, sp = {{58.58,69.3}}, lt = {422,929,1205,1206,1705,2589,2592,3385} },
	[14339] = { n = "Aullador de la Muerte", en = "Death Howl", l = 49, h = 49, e = false, m = 3457, sp = {{50.03,77.11}}, lt = {4583,4584,8146,8846,11172,11225,11515,12203} },
	[14340] = { n = "Alshirr Respiramiedo", en = "Alshirr Banebreath", l = 54, h = 54, e = false, m = 3457, sp = {{40.25,85.21}}, lt = {3858,7909,7910,7912,8766,8838,8846,8952} },
	[14341] = { n = "Felendor the Accuser", en = "Felendor the Accuser", l = 53, h = 54, e = false, m = 234, sp = {{60.2,31.4}}, lt = {} },
	[14342] = { n = "Patafuria", en = "Ragepaw", l = 51, h = 51, e = false, m = 3457, sp = {{47.74,93.06}}, lt = {7910,8766,8836,8953,11515,11733,13443,13446} },
	[14343] = { n = "Olm el Sabio", en = "Olm the Wise", l = 52, h = 52, e = false, m = 3457, sp = {{50.17,32.81}}, lt = {5117,8146,8838,11417,11419,11420,11515,12207} },
	[14344] = { n = "Mongress", en = "Mongress", l = 50, h = 50, e = false, m = 3457, sp = {{47.05,83.96}}, lt = {8146,11172,11408,11409,11410,11515} },
	[14345] = { n = "El Ongar", en = "The Ongar", l = 51, h = 51, e = false, m = 3457, sp = {{42.22,49.9}}, lt = {3669,3670,3671,3673,3674,3676,5758,7296} },
	[14424] = { n = "Lodonante", en = "Mirelow", l = 25, h = 25, e = false, m = 1437, sp = {{23.66,29.45}}, lt = {765,785,929,1205,2447,2450,2452,2453} },
	[14425] = { n = "Roehuesos", en = "Gnawbone", l = 24, h = 24, e = false, m = 1437, sp = {{30.08,30.74}}, lt = {929,1205,2589,2592,2611,3385,3770,4306} },
	[14426] = { n = "Harb Monte Fétido", en = "Harb Foulmountain", l = 27, h = 27, e = false, m = 1441, sp = {{32.55,26.78}}, lt = {929,1205,1206,1705,2592,3385,3770,4306} },
	[14427] = { n = "Gibblesnik", en = "Gibblesnik", l = 28, h = 28, e = false, m = 1441, sp = {{55.62,50.45}}, lt = {929,1205,1705,2592,2771,2772,2836,2838} },
	[14428] = { n = "Uruson", en = "Uruson", l = 7, h = 7, e = false, m = 4500, sp = {{67.94,59.36}}, lt = {118,159,765,774,818,2447,2589,4536} },
	[14429] = { n = "Faucenestra", en = "Grimmaw", l = 11, h = 11, e = false, m = 4500, sp = {{40.13,79.99}}, lt = {774,818,858,1179,1210,2447,2455,2589} },
	[14430] = { n = "Acechapolvo", en = "Duskstalker", l = 9, h = 9, e = false, m = 4500, sp = {{58.15,76.65}}, lt = {765,774,818,2447,3409,4813,4814} },
	[14431] = { n = "Furia Shelda", en = "Fury Shelda", l = 8, h = 8, e = false, m = 4500, sp = {{34.35,34.74}}, lt = {117,118,159,765,774,818,2070,2447} },
	[14432] = { n = "Threggil", en = "Threggil", l = 6, h = 6, e = false, m = 4500, sp = {{51.99,50.54}}, lt = {117,118,159,774,818,2589,4536,4604} },
	[14433] = { n = "Barrosín", en = "Sludginn", l = 30, h = 30, e = false, m = 1437, sp = {{12.62,67.5}}, lt = {814,2447,2450,2453,3357,3385,3669,3670} },
	[14445] = { n = "Lord capitán Wyrmak", en = "Lord Captain Wyrmak", l = 45, h = 45, e = true, m = 1435, sp = {{68.91,38.91}}, lt = {1645,3358,3928,4599,4637,5803,5974,6149} },
	[14446] = { n = "Fingat", en = "Fingat", l = 43, h = 43, e = false, m = 1435, sp = {{61.43,83.72}}, lt = {1645,3858,3928,4603,4637,6149,7909,7910} },
	[14447] = { n = "Gilmorian", en = "Gilmorian", l = 43, h = 43, e = false, m = 1435, sp = {{95.87,64.39}}, lt = {1645,3928,4603,6149,7973,17058} },
	[14448] = { n = "Fundespino", en = "Molt Thorn", l = 42, h = 42, e = false, m = 1435, sp = {{34.49,38.84}}, lt = {765,785,1645,2447,2449,2450,2452,2453} },
	[14471] = { n = "Setis", en = "Setis", l = 61, h = 61, e = true, m = 1451, sp = {{29.58,86.64}}, lt = {4552,4554,5760,7910,7912,8150} },
	[14472] = { n = "Gretheer", en = "Gretheer", l = 57, h = 57, e = false, m = 1451, sp = {{39.33,55.42}}, lt = {1074,4337,4585,7910,10285,12205,14227,19441} },
	[14473] = { n = "Lapress", en = "Lapress", l = 60, h = 60, e = true, m = 1451, sp = {{58.04,79.44}}, lt = {5759,6300,6302,12695,13492,14506,20499} },
	[14474] = { n = "Zora", en = "Zora", l = 59, h = 59, e = true, m = 1451, sp = {{21.01,61.27}}, lt = {5759,6300,6302,7909,7910,14489,14496,14508} },
	[14475] = { n = "Rex Ashil", en = "Rex Ashil", l = 57, h = 57, e = true, m = 1451, sp = {{45.77,28.1}}, lt = {3914,5759,6300,6302,7909,10620,12365,12695} },
	[14476] = { n = "Krellack", en = "Krellack", l = 56, h = 56, e = false, m = 1451, sp = {{63.21,16.7}}, lt = {4867,4872,5759,12037,12693,12704,16215,19441} },
	[14477] = { n = "Grubthor", en = "Grubthor", l = 58, h = 58, e = false, m = 1451, sp = {{44.43,80.79}}, lt = {3669,3676,15743} },
	[14478] = { n = "Huricanian", en = "Huricanian", l = 58, h = 58, e = false, m = 1451, sp = {{21.56,24.12}}, lt = {5759,7069,7081,7082,7909,7910,14508,22527} },
	[14479] = { n = "Señor Crepuscular Everun", en = "Twilight Lord Everun", l = 60, h = 60, e = false, m = 1451, sp = {{18.3,85.84}}, lt = {3928,4339,5759,7909,7910,8766,8952,12693} },
	[14487] = { n = "Gluggle", en = "Gluggle", l = 37, h = 37, e = false, m = 1434, sp = {{34.87,22.71}}, lt = {1708,1710,2725,2728,2730,2732,2734,2735} },
	[14488] = { n = "Roloch", en = "Roloch", l = 38, h = 38, e = false, m = 1434, sp = {{37.37,31.22}}, lt = {1708,1710,2725,2730,2735,2738,2740,2742} },
	[14490] = { n = "Rippa", en = "Rippa", l = 44, h = 44, e = false, m = 1434, sp = {{29.25,84.9}}, lt = {4860,6308,17057} },
	[14491] = { n = "Kurmokk", en = "Kurmokk", l = 42, h = 42, e = false, m = 1434, sp = {{38.11,61.13}}, lt = {2799,4096,4099,5637} },
	[14492] = { n = "Verifonix", en = "Verifonix", l = 42, h = 42, e = false, m = 1434, sp = {{36.52,57.06}}, lt = {1630,1645,1652,2725,2728,2730,2732,2735} },
	[14697] = { n = "Horror torpe", en = "Lumbering Horror", l = 1, h = 1, e = false, m = 1422, sp = {{42.5,36.2}}, lt = {12841,22484,23090,23091,23092,23093} },
	[16379] = { n = "Espíritu de los Malditos", en = "Spirit of the Damned", l = 61, h = 61, e = false, m = 317, sp = {{27.4,11.6}}, lt = {12841,22484,23090,23091,23092,23093} },
	[16380] = { n = "Bruja Osaria", en = "Bone Witch", l = 61, h = 61, e = false, m = 317, sp = {{27.4,11.6}}, lt = {12841,22484,23090,23091,23092,23093} },
	[17075] = { n = "Sandworm", en = "Sandworm", l = 63, h = 63, e = true, m = 1451, sp = {{55.4,36.8}}, lt = {} },
}

-- Diccionario de Tesoros y Cofres de Mundo Clasico
local TREASURES = {
	[1765] = { n = "Worn Wooden Chest", sp = {{1416,39.18,14.66}} },
	[2039] = { n = "Hidden Strongbox", sp = {{1416,12.8,76.49},{1416,18.39,76.95},{1416,10.67,77.53},{1416,21.17,53.74},{1416,18.75,54.87},{1416,20.97,56.52},{1416,21.6,57.65},{1416,20.7,60.26},{1416,22.63,60.49},{1416,21.79,60.75}} },
	[2744] = { n = "Giant Clam", sp = {{1434,24.38,27.99},{1434,25.77,28.31},{1434,24.65,28.45},{1434,24.06,28.66},{1434,25.27,28.71},{1434,23.73,29.09},{1434,24.88,29.11},{1434,26.91,29.16},{1434,25.68,29.79},{1434,27.86,25.38}} },
	[2843] = { n = "Battered Chest", sp = {{1426,30.74,80.39},{1426,29.24,81.16},{1426,20.66,76.74},{1426,29.29,81.05},{1426,22.61,80.11},{1426,22.62,80.51},{1426,26.39,79.7},{1426,26.19,79.6},{1426,30.61,79.43},{1426,29.23,80.64}} },
	[2849] = { n = "Battered Chest", sp = {{1432,48.14,39.58},{1432,69.75,66.46},{1432,75.59,24.99},{1432,77.1,14.54},{1432,45.58,43.34},{1432,48.86,54.23},{1432,68.88,62.45},{1432,59.18,13.45},{1432,68.32,18.44},{1432,47.91,34.24}} },
	[2850] = { n = "Solid Chest", sp = {{1413,41.62,78.65},{1413,43.13,83.22},{1413,44.31,82.85},{1437,35.14,27.68},{1437,62.95,69.67},{1437,43.55,34.85},{1437,38.96,34.32},{1437,13.89,30.28},{1437,64.86,55.94},{1437,13.46,41.33}} },
	[2852] = { n = "Solid Chest", sp = {{1437,46.6,46.63},{1437,71.28,30.32},{1437,59.75,24.53},{1437,47.59,15.12},{1437,45.64,46.15},{1437,45.71,42.59},{1437,51.17,46.11},{1437,53.69,54.72},{1437,48.22,15.91},{1437,38.51,45.91}} },
	[2855] = { n = "Solid Chest", sp = {{1434,43.9,18.34},{1434,45.65,9.77},{1434,24.33,12.65},{1434,42.97,19.39},{1434,43.81,9.37},{1434,44.43,10.05},{1434,25.18,29.71},{1434,24.99,23.02},{1434,33.45,15.51},{1434,29.95,19.84}} },
	[2857] = { n = "Solid Chest", sp = {{1445,63.23,7.2},{1445,64.43,26.89},{1445,57.99,13.35},{1445,31.43,21.51},{1445,61.64,18.15},{1445,57.66,16.47},{1445,62.93,9.31},{1445,63.08,19.03},{1445,57.28,15.12},{1445,59.08,9.7}} },
	[4149] = { n = "Solid Chest", sp = {{1427,45.46,38.78},{1427,35.93,58.81},{1427,40.12,41.51},{1427,44.3,62.76},{1427,25.87,24.7},{1427,17.64,38.08},{1427,28.66,24.83},{1427,44.34,33.81},{1427,37.92,38.98},{1427,41.71,21.12}} },
	[19017] = { n = "Giant Clam", sp = {{1413,64.95,49.4},{1413,63.5,50.43},{1413,64.14,50.68},{1413,63.76,51.97},{1413,64.65,55.81},{1413,66.14,44.34},{1413,63.61,54.21},{1413,64.86,40.56},{1413,66.43,41.43},{1413,65.23,42.22}} },
	[19018] = { n = "Giant Clam", sp = {{1437,17.84,58.94},{1437,10.54,66.11},{1437,12.76,63.18},{1437,15.42,60.61},{1437,20.72,18.09},{1437,23.11,17.56},{1437,26.23,13.0},{1437,5.44,48.87},{1437,8.13,41.61},{1437,11.7,41.01}} },
	[106318] = { n = "Battered Chest", sp = {{1426,26.75,36.35},{1426,26.02,51.14},{1426,23.45,52.47},{1426,39.18,46.61},{1426,71.06,59.04},{1426,72.11,49.83},{1426,74.74,56.52},{1426,79.34,58.58},{1426,43.53,49.22},{1426,71.95,52.05}} },
	[106319] = { n = "Battered Chest", sp = {{1432,34.69,91.04},{1432,49.05,29.8},{1432,27.78,83.27},{1432,34.93,82.61},{1432,26.45,44.28},{1432,36.23,23.53},{1432,34.47,27.23},{1432,37.71,15.99},{1432,35.73,16.24},{1432,54.41,25.97}} },
	[153451] = { n = "Solid Chest", sp = {{1446,75.33,46.08},{1446,71.57,43.89},{1446,39.95,54.34},{1446,72.29,44.06},{1446,41.52,54.52},{1446,41.2,57.02},{1446,42.21,53.16},{1446,38.69,56.87},{1446,72.61,46.71},{1446,71.13,45.7}} },
	[153453] = { n = "Solid Chest", sp = {{1428,43.28,33.99},{1428,77.04,61.88},{1428,81.86,44.81},{1428,31.22,62.38},{1428,44.66,58.34},{1428,84.46,26.59},{1428,42.93,37.52},{1428,21.78,47.41},{1428,92.24,53.39},{1428,38.8,54.36}} },
	[153454] = { n = "Solid Chest", sp = {{4274,69.77,30.85},{4274,63.41,23.59},{4274,39.25,48.63},{4274,85.95,46.43},{4274,83.31,79.29},{4274,78.14,76.34},{4274,72.72,18.06},{4274,83.13,38.88},{4274,39.37,53.62},{4274,72.21,30.15}} },
	[153463] = { n = "Large Solid Chest", sp = {{1422,46.94,13.17},{1422,41.69,14.92},{1422,42.32,17.96}} },
	[157936] = { n = "Un'Goro Dirt Pile", sp = {{1449,30.52,69.98},{1449,28.01,62.73},{1449,30.97,78.87},{1449,33.11,65.36},{1449,25.56,46.29},{1449,30.61,56.66},{1449,73.41,58.29},{1449,44.14,33.79},{1449,31.03,34.12},{1449,44.7,54.42}} },
	[179487] = { n = "Waterlogged Footlocker", sp = {{1433,39.37,61.92},{1433,37.8,58.85},{1433,50.25,55.12},{1433,44.87,59.05},{1433,44.72,55.99},{1433,52.17,61.3},{1433,47.91,54.28},{1433,43.41,64.46},{3836,7.14,14.18},{3836,13.63,30.95}} },
	[179489] = { n = "Waterlogged Footlocker", sp = {{3836,10.69,17.25}} },
	[179491] = { n = "Waterlogged Footlocker", sp = {{1443,31.65,22.52},{1443,36.56,22.11},{1443,37.18,21.96},{1443,37.47,21.3},{1443,37.63,22.9},{1443,34.05,20.7},{1443,35.44,20.78}} },
	[179492] = { n = "Dented Footlocker", sp = {{1418,40.72,28.07},{1418,41.07,27.4},{1418,40.81,28.67},{1418,42.31,28.41}} },
	[179494] = { n = "Dented Footlocker", sp = {{1427,35.91,45.23},{1427,42.28,29.48},{1427,39.07,24.43},{1427,38.43,50.83},{1427,40.4,38.18},{1427,40.61,52.84},{1427,38.0,45.86},{1427,40.73,31.17},{1427,44.58,54.15},{1427,42.3,54.08}} },
	[179496] = { n = "Dented Footlocker", sp = {{1427,45.75,28.33},{1427,46.85,43.84},{1427,46.89,25.69},{1427,42.91,31.17},{1427,43.93,30.88},{1446,71.28,48.37},{1446,70.86,47.39},{1446,74.82,45.51},{1446,74.64,47.31},{1446,74.2,46.96}} },
}

local tonumber, pairs, ipairs, select = tonumber, pairs, ipairs, select
local GetItemInfo = GetItemInfo

local cacheRares = {}
local cacheTreasures = {}

local function formatSpawns(mapID, coordsList)
	local spawns = {}
	for i = 1, #coordsList do
		local c = coordsList[i]
		spawns[#spawns + 1] = { map = mapID, x = c[1], y = c[2], f = "e" }
	end
	return spawns
end

local function formatChestSpawns(coordsList)
	local spawns = {}
	for i = 1, #coordsList do
		local c = coordsList[i]
		spawns[#spawns + 1] = { map = c[1], x = c[2], y = c[3], f = "e" }
	end
	return spawns
end

function RareData.Get(kind, id)
	id = tonumber(id)
	if not id then return nil end
	if kind == "treasure" then
		if cacheTreasures[id] then return cacheTreasures[id] end
		local d = TREASURES[id]
		if not d then return nil end
		local rec = {
			kind = "treasure",
			id = id,
			name = d.n,
			spawns = formatChestSpawns(d.sp),
			loot = {},
		}
		cacheTreasures[id] = rec
		return rec
	end

	if cacheRares[id] then return cacheRares[id] end
	local d = RARES[id]
	if not d then return nil end
	local rec = {
		kind = "rare",
		id = id,
		name = d.n,
		level = d.l,
		levelMax = d.h,
		elite = d.e,
		boss = false,
		spawns = formatSpawns(d.m, d.sp),
		loot = d.lt or {},
	}
	cacheRares[id] = rec
	return rec
end

function RareData.Known(kind, id)
	id = tonumber(id)
	if not id then return false end
	if kind == "treasure" then return TREASURES[id] ~= nil end
	return RARES[id] ~= nil
end

function RareData.ListOf(kind)
	local list = {}
	if kind == "treasure" then
		for id in pairs(TREASURES) do
			local rec = RareData.Get("treasure", id)
			if rec and #rec.spawns > 0 then list[#list + 1] = rec end
		end
		table.sort(list, function(a, b) return a.id < b.id end)
		return list
	end

	for id in pairs(RARES) do
		local rec = RareData.Get("rare", id)
		if rec and #rec.spawns > 0 then list[#list + 1] = rec end
	end
	table.sort(list, function(a, b) return a.id < b.id end)
	return list
end

function RareData.Each(kind, fn)
	if type(fn) ~= "function" then return end
	if kind == "treasure" then
		for id, d in pairs(TREASURES) do
			if fn(id, d.n) == false then return end
		end
	else
		for id, d in pairs(RARES) do
			if fn(id, d.n) == false then return end
		end
	end
end

function RareData.Npc(id)
	return RareData.Get("rare", id)
end

function RareData.Object(id)
	return RareData.Get("treasure", id)
end

function RareData.Loot(kind, id)
	local rec = RareData.Get(kind, id)
	return rec and rec.loot or {}
end

function RareData.Name(kind, id)
	local rec = RareData.Get(kind, id)
	return rec and rec.name or nil
end

function RareData.Item(id)
	id = tonumber(id)
	if not id then return nil end
	local name, link, quality, ilvl, reqLvl = GetItemInfo(id)
	return {
		id = id,
		name = name or ("Objeto " .. id),
		quality = quality or 1,
		reqLevel = reqLvl or 0,
	}
end

function RareData.IsLoaded()
	return true
end

function RareData.Load()
	return true
end

-- Indice precompilado de busqueda rapida para el Buscador (Core/Search.lua)
local RARE_BLOB = "\002thuros dedoluz\00161,3,,14\n\002thuros lightfingers\00161,3,,19\n\002narg el capataz\00179,3,,15\n\002narg the taskmaster\00179,3,,19\n\002morgaine el astuto\00199,3,,18\n\002morgaine the sly\00199,3,,16\n\002bronco mordeveloz\001100,3,,17\n\002gruff swiftbite\001100,3,,15\n\002vultros\001462,3,,7\n\002madre colmillo\001471,3,,14\n\002mother fang\001471,3,,11\n\002fedfennel\001472,3,,9\n\002lord malathrom\001503,3,,14\n\002sargento garravil\001506,3,,17\n\002sergeant brashclaw\001506,3,,18\n\002fenros\001507,3,,6\n\002eslarc\001519,3,,6\n\002slark\001519,3,,5\n\002brack\001520,3,,5\n\002lupos\001521,3,,5\n\002nefaru\001534,3,,6\n\002leprithus\001572,3,,9\n\002siegaenemigos 4000\001573,3,,18\n\002foe reaper 4000\001573,3,,15\n\002naraxis\001574,3,,7\n\002kazon\001584,3,,5\n\002noble aducido\001596,4,,13\n\002brainwashed noble\001596,4,,17\n\002marisa dupaige\001599,4,,15\n\002capo the mean\001601,4,,13\n\002castaneta\001616,3,,9\n\002chatter\001616,3,,7\n\002carnicero moshogg\001723,4,,18\n\002moshogg butcher\001723,4,,16\n\002cabecilla perdido\001763,3,,17\n\002lost one chieftain\001763,3,,18\n\002comandante yelestron\001771,3,,20\n\002commander felstrom\001771,3,,18\n\002rohh el silencioso\001947,3,,18\n\002rohh the silent\001947,3,,15\n\002maestro de batalla faucedraco\0011037,3,,29\n\002dragonmaw battlemaster\0011037,3,,22\n\002jade\0011063,4,,4\n\002cocinero perdido\0011106,3,,16\n\002lost one cook\0011106,3,,13\n\002viuda sanguijuela\0011112,3,,17\n\002leech widow\0011112,3,,11\n\002martidorsal\0011119,3,,11\n\002hammerspine\0011119,3,,11\n\002bjarn\0011130,3,,5\n\002maderero\0011132,3,,8\n\002timber\0011132,3,,6\n\002edan el aullador\0011137,3,,16\n\002edan the howler\0011137,3,,15\n\002matriarca tajobuche\0011140,3,,19\n\002razormaw matriarch\0011140,3,,18\n\002gran patriarca arctikus\0011260,3,,23\n\002great father arctikus\0011260,3,,21\n\002jefe vayachi\0011398,3,,12\n\002boss galgosh\0011398,3,,12\n\002magosh\0011399,3,,6\n\002maestro excavador\0011424,3,,17\n\002master digger\0011424,3,,13\n\002grizlak\0011425,3,,7\n\002alma perdida\0011531,3,,12\n\002lost soul\0011531,3,,9\n\002espiritu atormentado\0011533,3,,20\n\002tormented spirit\0011533,3,,16\n\002panzascama\0011552,3,,10\n\002scale belly\0011552,3,,11\n\002bruegal nudoferro\0011720,4,,17\n\002bruegal ironknuckle\0011720,4,,19\n\002juez escarlata\0011837,3,,14\n\002scarlet judge\0011837,3,,13\n\002interrogador escarlata\0011838,4,,22\n\002scarlet interrogator\0011838,4,,20\n\002alto clerigo escarlata\0011839,4,,22\n\002scarlet high clerist\0011839,4,,20\n\002verdugo escarlata\0011841,4,,17\n\002scarlet executioner\0011841,4,,19\n\002supervisor jerris\0011843,4,,17\n\002foreman jerris\0011843,4,,14\n\002supervisor marcrid\0011844,3,,18\n\002foreman marcrid\0011844,3,,15\n\002crinatroz\0011847,3,,9\n\002foulmane\0011847,3,,8\n\002lord maldazzar\0011848,3,,14\n\002rumoratroz\0011849,3,,10\n\002dreadwhisper\0011849,3,,12\n\002putridus\0011850,4,,8\n\002putridius\0011850,4,,9\n\002la cascara\0011851,3,,10\n\002the husk\0011851,3,,8\n\002herrero escarlata\0011885,3,,17\n\002scarlet smith\0011885,3,,13\n\002muad\0011910,3,,4\n\002deeb\0011911,3,,4\n\002escribachizo de dalaran\0011920,3,,23\n\002dalaran spellscribe\0011920,3,,19\n\002granjero solliden\0011936,3,,17\n\002farmer solliden\0011936,3,,15\n\002truhan putrepellejo\0011944,3,,19\n\002rot hide bruiser\0011944,3,,16\n\002melegrunos\0011948,3,,10\n\002snarlmane\0011948,3,,9\n\002maruk vermiscala\0012090,3,,17\n\002maruk wyrmscale\0012090,3,,16\n\002garneg hullacraneo\0012108,3,,18\n\002garneg charskull\0012108,3,,16\n\002zancador madrezarpa\0012172,3,,19\n\002strider clutchmother\0012172,3,,20\n\002garrasombria\0012175,3,,12\n\002shadowclaw\0012175,3,,10\n\002lady miraluna\0012184,3,,13\n\002lady moongazer\0012184,3,,14\n\002carnivoris el rompedor\0012186,3,,22\n\002carnivous the breaker\0012186,3,,21\n\002licillin\0012191,3,,8\n\002clamafuegos radison\0012192,3,,19\n\002firecaller radison\0012192,3,,18\n\002furia petrea\0012258,3,,12\n\002stone fury\0012258,3,,10\n\002regente corvozarpa\0012283,3,,18\n\002ravenclaw regent\0012283,3,,16\n\002narillasanz\0012447,4,,11\n\002skhowl\0012452,3,,6\n\002logrosh\0012453,3,,8\n\002crocolisco del lago grande\0012476,3,,26\n\002large loch crocolisk\0012476,3,,20\n\002lord sakrasis\0012541,3,,13\n\002darbel montrosa\0012598,4,,15\n\002darbel montrose\0012598,4,,15\n\002kantor\0012600,3,,6\n\002singer\0012600,3,,6\n\002panzatroz\0012601,4,,9\n\002foulbelly\0012601,4,,9\n\002ruul onapiedra\0012602,4,,14\n\002ruul onestone\0012602,4,,13\n\002kovork\0012603,3,,6\n\002molok el triturador\0012604,3,,19\n\002molok the crusher\0012604,3,,17\n\002zalas secacorteza\0012605,3,,17\n\002zalas witherbark\0012605,3,,16\n\002nimar el destripador\0012606,3,,20\n\002nimar the slayer\0012606,3,,16\n\002geomantico dagasilex\0012609,3,,20\n\002geomancer flintdagger\0012609,3,,21\n\002comandante de forjatiniebla\0012744,3,,27\n\002shadowforge commander\0012744,3,,21\n\002golem de asedio\0012749,4,,15\n\002siege golem\0012749,4,,11\n\002golem de guerra\0012751,3,,15\n\002war golem\0012751,3,,9\n\002estruendor\0012752,3,,10\n\002rumbler\0012752,3,,7\n\002anathemus\0012754,4,,9\n\002principe nazjak\0012779,3,,15\n\002prince nazjak\0012779,3,,13\n\002diente partido\0012850,3,,14\n\002broken tooth\0012850,3,,12\n\002zaricotl\0012931,4,,8\n\002aullido fantasma\0013056,3,,16\n\002ghost howl\0013056,3,,10\n\002mazzranache\0013068,3,,11\n\002cosechador silitido\0013253,3,,19\n\002silithid harvester\0013253,3,,18\n\002anciano mistico filocico\0013270,4,,24\n\002elder mystic razorsnout\0013270,4,,23\n\002bestia de lodo\0013295,3,,14\n\002sludge beast\0013295,3,,12\n\002gesharahan\0013398,4,,10\n\002rathorian\0013470,3,,9\n\002musgonegro el fetido\0013535,3,,20\n\002blackmoss the fetid\0013535,3,,19\n\002bestia de alcantarilla\0013581,3,,22\n\002sewer beast\0013581,3,,11\n\002minero johnson\0013586,4,,14\n\002miner johnson\0013586,4,,13\n\002tritesta el azotador\0013652,4,,20\n\002trigore the lasher\0013652,4,,18\n\002boahn\0013672,4,,5\n\002boticario falthis\0013735,3,,17\n\002apothecary falthis\0013735,3,,18\n\002akkrilus\0013773,3,,8\n\002senor de la manada luporror\0013792,3,,27\n\002terrowulf packlord\0013792,3,,18\n\002capitan juramorte\0013872,4,,17\n\002deathsworn captain\0013872,4,,18\n\002patriarca alaorgullo\0014015,3,,20\n\002pridewing patriarch\0014015,3,,19\n\002anciano vengativo\0014030,3,,17\n\002vengeful ancient\0014030,3,,16\n\002naltaszar\0014066,4,,10\n\002devastador silitido\0014132,3,,19\n\002silithid ravager\0014132,3,,16\n\002brotasangre\0014339,4,,11\n\002brimgore\0014339,4,,8\n\002viuda niebla negra\0014380,3,,18\n\002darkmist widow\0014380,3,,14\n\002cazador ciego\0014425,4,,13\n\002blind hunter\0014425,4,,12\n\002cuerolanza de rajacieno\0014438,4,,23\n\002razorfen spearhide\0014438,4,,18\n\002clamatierras halmgar\0014842,4,,20\n\002earthcaller halmgar\0014842,4,,19\n\002lady szallah\0015343,3,,12\n\002cabeza diamante\0015345,3,,15\n\002diamond head\0015345,3,,12\n\002rugesangre el acechador\0015346,3,,23\n\002bloodroar the stalker\0015346,3,,21\n\002antilus el surcador\0015347,3,,19\n\002antilus the soarer\0015347,3,,18\n\002vigia de los suenos lengua bifida\0015348,3,,33\n\002dreamwatcher forktongue\0015348,3,,23\n\002arash-ethis\0015349,3,,11\n\002qirot\0015350,3,,5\n\002viejo tripasgrises\0015352,3,,18\n\002old grizzlegut\0015352,3,,14\n\002nudor fraterfolio\0015354,3,,17\n\002gnarl leafbrother\0015354,3,,17\n\002grunidor\0015356,3,,8\n\002snarler\0015356,3,,7\n\002scillia daggerquil\0015367,4,,18\n\002veyzhak el canibal\0015399,4,,18\n\002veyzhak the cannibal\0015399,4,,20\n\002zekkis\0015400,4,,6\n\002hermana azote de odio\0015785,4,,21\n\002sister hatelash\0015785,4,,15\n\002jalalanza\0015786,3,,9\n\002snagglespear\0015786,3,,12\n\002despota emilgund\0015787,3,,16\n\002enforcer emilgund\0015787,3,,17\n\002serra mountainhome\0015789,4,,18\n\002lizzle sprysprocket\0015790,4,,19\n\002captain armistice\0015793,4,,17\n\002thurmonde the devout\0015794,4,,20\n\002grash thunderbrew\0015795,4,,17\n\002ben\0015796,4,,3\n\002aean rio veloz\0015797,4,,14\n\002aean swiftriver\0015797,4,,15\n\002thora plumaluna\0015798,4,,15\n\002thora feathermoon\0015798,4,,17\n\002hannah filohoja\0015799,4,,15\n\002hannah bladeleaf\0015799,4,,16\n\002marcus bel\0015800,4,,10\n\002el rastrillo\0015807,3,,12\n\002the rake\0015807,3,,8\n\002senor de la guerra kolkanis\0015808,3,,27\n\002warlord kolkanis\0015808,3,,16\n\002comandante de vigilancia zalafil\0015809,3,,32\n\002watch commander zalaphil\0015809,3,,24\n\002tejeyel scronn\0015822,4,,14\n\002felweaver scornn\0015822,4,,16\n\002despellejador de la muerte\0015823,3,,26\n\002death flayer\0015823,3,,12\n\002capitan colmillo plano\0015824,4,,22\n\002captain flat tusk\0015824,4,,17\n\002geosenor motas\0015826,3,,14\n\002geolord mottle\0015826,3,,14\n\002brontus\0015827,4,,7\n\002humar el senor orgulloso\0015828,4,,24\n\002humar the pridelord\0015828,4,,19\n\002bufo el molesto\0015829,3,,15\n\002snort the heckler\0015829,3,,17\n\002hermana rathtalon\0015830,4,,17\n\002sister rathtalon\0015830,4,,16\n\002velocrin\0015831,4,,8\n\002swiftmane\0015831,4,,9\n\002silenciatruenos\0015832,3,,15\n\002thunderstomp\0015832,3,,12\n\002azzere el filo del cielo\0015834,3,,24\n\002azzere the skyblade\0015834,3,,19\n\002supervisor asas\0015835,3,,15\n\002foreman grills\0015835,3,,14\n\002ingeniero giralesin\0015836,3,,19\n\002engineer whirleygig\0015836,3,,19\n\002brazorroca\0015837,3,,10\n\002stonearm\0015837,3,,8\n\002lanzarrota\0015838,3,,10\n\002brokespear\0015838,3,,10\n\002lanzapiedras\0015841,4,,12\n\002rocklance\0015841,4,,9\n\002takk el saltarin\0015842,4,,16\n\002takk the leaper\0015842,4,,15\n\002heggin pelopiedra\0015847,3,,17\n\002heggin stonewhisker\0015847,3,,19\n\002malgin cebadiz\0015848,3,,14\n\002malgin barleybrew\0015848,3,,17\n\002cavador flamaforja\0015849,3,,18\n\002digger flameforge\0015849,3,,17\n\002capitan gerogg piemartillo\0015851,4,,26\n\002captain gerogg hammertoe\0015851,4,,24\n\002hagg taurruina\0015859,4,,14\n\002hagg taurenbane\0015859,4,,15\n\002geosacerdote gukkrok\0015863,3,,21\n\002geopriest gukkrok\0015863,3,,18\n\002suingart cuerolanza\0015864,4,,19\n\002swinegart spearhide\0015864,4,,19\n\002dishu\0015865,3,,5\n\002dragon feerico descarriado\0015912,4,,26\n\002deviate faerie dragon\0015912,4,,21\n\002hermano roblecuervo\0015915,4,,19\n\002brother ravenoak\0015915,4,,16\n\002centinela amarassan\0015916,4,,19\n\002sentinel amarassan\0015916,4,,18\n\002alapenas\0015928,4,,8\n\002sorrow wing\0015928,4,,11\n\002hermana riven\0015930,4,,13\n\002sister riven\0015930,4,,12\n\002supervisor rigger\0015931,4,,17\n\002foreman rigger\0015931,4,,14\n\002capataz latimillo\0015932,4,,17\n\002taskmaster whipfang\0015932,4,,19\n\002achellios el desterrado\0015933,3,,23\n\002achellios the banished\0015933,3,,22\n\002cuorevaja\0015934,4,,9\n\002heartrazor\0015934,4,,10\n\002ojohierro el invencible\0015935,4,,23\n\002ironeye the invincible\0015935,4,,22\n\002aguijon vil\0015937,4,,11\n\002vile sting\0015937,4,,10\n\002fantasma de varothen\0016118,3,,21\n\002varothens ghost\0016118,3,,17\n\002embajador hierro negro\0016228,4,,22\n\002dark iron ambassador\0016228,4,,20\n\002campeon caido\0016488,4,,13\n\002fallen champion\0016488,4,,15\n\002dorsacerado\0016489,4,,11\n\002ironspine\0016489,4,,9\n\002azshir el insomne\0016490,4,,17\n\002azshir the sleepless\0016490,4,,20\n\002matriarca ravasaurio\0016581,3,,20\n\002ravasaur matriarch\0016581,3,,18\n\002madrezarpa zavas\0016582,3,,16\n\002clutchmother zavas\0016582,3,,18\n\002gruff\0016583,4,,5\n\002rey mosh\0016584,4,,8\n\002king mosh\0016584,4,,9\n\002uhkloc\0016585,3,,7\n\002monnos el viejo\0016646,4,,15\n\002monnos the elder\0016646,4,,16\n\002magistrix yelmalcon\0016647,3,,19\n\002magister hawkhelm\0016647,3,,17\n\002antilos\0016648,3,,7\n\002lady sesspira\0016649,3,,13\n\002general colmiterror\0016650,3,,19\n\002general fangferror\0016650,3,,18\n\002guardian grunefuria\0016651,3,,19\n\002gatekeeper rageroar\0016651,3,,19\n\002maestro pavoria\0016652,3,,15\n\002master feardred\0016652,3,,15\n\002flagglemurk el cruel\0017015,3,,20\n\002flagglemurk the cruel\0017015,3,,21\n\002lady vespira\0017016,3,,12\n\002lord sesgapecados\0017017,3,,17\n\002lord sinslayer\0017017,3,,14\n\002maestro de excavacion palatiro\0017057,4,,30\n\002digmaster shovelphlange\0017057,4,,23\n\002dessecus\0017104,4,,8\n\002immolatus\0017137,4,,9\n\002embajador sanguinarius\0017895,4,,22\n\002ambassador bloodrage\0017895,4,,20\n\002lider de guerra krazzilak\0018199,4,,25\n\002warleader krazzilak\0018199,4,,19\n\002jinzallah el arenero\0018200,4,,21\n\002jinzallah the sandbringer\0018200,4,,26\n\002omgorn el perdido\0018201,3,,17\n\002omgorn the lost\0018201,3,,15\n\002cyclok el loco\0018202,3,,14\n\002cyclok the mad\0018202,3,,14\n\002kregg volcayecto\0018203,3,,16\n\002kregg keelhaul\0018203,3,,14\n\002soriid el devorador\0018204,3,,19\n\002soriid the devourer\0018204,3,,19\n\002haarka el voraz\0018205,3,,15\n\002haarka the ravenous\0018205,3,,19\n\002soul of tanaris\0018206,4,,15\n\002pajaro de fuego superior\0018207,3,,24\n\002greater firebird\0018207,3,,16\n\002llagapata mortifera\0018208,3,,19\n\002murderous blisterpaw\0018208,3,,20\n\002filogarra\0018210,3,,9\n\002razortalon\0018210,3,,10\n\002viejo saltariscos\0018211,3,,17\n\002old cliff jumper\0018211,3,,16\n\002el rik\0018212,3,,6\n\002the reak\0018212,3,,8\n\002espaldacerada\0018213,3,,13\n\002ironback\0018213,3,,8\n\002jalinde dracoestio\0018214,3,,18\n\002jalinde summerdrake\0018214,3,,19\n\002grimungus\0018215,4,,9\n\002grimungous\0018215,4,,10\n\002retherokk el rabioso\0018216,3,,20\n\002retherokk the berserker\0018216,3,,23\n\002mithrethis el encantador\0018217,4,,25\n\002mithrethis the enchanter\0018217,4,,25\n\002blancorazon el acechador\0018218,3,,24\n\002witherheart the stalker\0018218,3,,23\n\002matagallinas zularek\0018219,3,,21\n\002zularek hatefowler\0018219,3,,19\n\002rekktilac\0018277,3,,10\n\002smoldar\0018278,3,,7\n\002golem de guerra defectuoso\0018279,3,,26\n\002faulty war golem\0018279,3,,16\n\002shleipnarr\0018280,3,,10\n\002escaldar\0018281,3,,8\n\002scald\0018281,3,,5\n\002alto senor mastrogonde\0018282,4,,22\n\002highlord mastrogonde\0018282,4,,20\n\002maestro de esclavos negrozon\0018283,3,,28\n\002slave master blackheart\0018283,3,,23\n\002mojo el retorcido\0018296,3,,17\n\002mojo the twisted\0018296,3,,16\n\002magronos el implacable\0018297,3,,22\n\002magronos the unyielding\0018297,3,,23\n\002akubar el vidente\0018298,3,,17\n\002akubar the seer\0018298,3,,15\n\002escupetripas\0018299,3,,12\n\002spiteflayer\0018299,3,,11\n\002devastatia\0018300,3,,10\n\002ravage\0018300,3,,6\n\002clack el atracador\0018301,3,,18\n\002clack the reaver\0018301,3,,16\n\002ojo de la muerte\0018302,3,,16\n\002deatheye\0018302,3,,8\n\002grunon\0018303,3,,6\n\002grunter\0018303,3,,7\n\002desdenamiedos\0018304,3,,13\n\002dreadscorn\0018304,3,,10\n\002gibblewilt\0018503,3,,10\n\002el evalcharr\0018660,3,,12\n\002the evalcharr\0018660,3,,13\n\002panzor el invencible\0018923,4,,20\n\002panzor the invincible\0018923,4,,21\n\002el behemoth\0018924,4,,11\n\002the behemoth\0018924,4,,12\n\002hematos\0018976,4,,7\n\002thauris balgarr\0018978,3,,15\n\002gruklash\0018979,3,,8\n\002atracador estropeado\0018981,3,,20\n\002malfunctioning reaver\0018981,3,,21\n\002piromantico fruto del saber\0019024,4,,27\n\002pyromancer loregrain\0019024,4,,20\n\002lord roccor\0019025,4,,11\n\002guarda stilgiss\0019041,4,,15\n\002warder stilgiss\0019041,4,,15\n\002verek\0019042,4,,5\n\002intendente escudo del estigma\0019046,4,,29\n\002scarshield quartermaster\0019046,4,,24\n\002senor magus cumbrerroca\0019217,4,,23\n\002spirestone lord magus\0019217,4,,21\n\002senor de batalla cumbrerroca\0019218,4,,28\n\002spirestone battle lord\0019218,4,,22\n\002carnicero cumbrerroca\0019219,4,,21\n\002spirestone butcher\0019219,4,,18\n\002sleeping dragon\0019417,4,,15\n\002bannok hacha macabra\0019596,4,,20\n\002bannok grimaxe\0019596,4,,14\n\002hahkzor\0019602,3,,8\n\002gorgonoch\0019604,3,,10\n\002ghok bashguud\0019718,4,,13\n\002intendente zigris\0019736,4,,17\n\002quartermaster zigris\0019736,4,,20\n\002faucemuerte\00110077,3,,11\n\002deathmaw\00110077,3,,8\n\002chispa terrorifica\00110078,3,,18\n\002terrorspark\00110078,3,,11\n\002sandarr asaltadunas\00110080,4,,19\n\002sandarr dunereaver\00110080,4,,18\n\002anima de polvo\00110081,4,,14\n\002dustwraith\00110081,4,,10\n\002zerillis\00110082,4,,8\n\002volchan\00110119,4,,7\n\002general colbatann\00110196,4,,17\n\002mezzir el aullador\00110197,3,,18\n\002mezzir the howler\00110197,3,,17\n\002kashoch el atracador\00110198,4,,20\n\002kashoch the reaver\00110198,4,,18\n\002pardo patanieve\00110199,3,,15\n\002grizzle snowpaw\00110199,3,,15\n\002rakshiri\00110200,3,,9\n\002lady hederine\00110201,4,,13\n\002azurous\00110202,4,,7\n\002berylgos\00110203,4,,8\n\002wep\00110236,3,,3\n\002yor\00110237,3,,3\n\002staggon\00110238,3,,7\n\002tepolar\00110239,4,,7\n\002guardia vil ardiente\00110263,4,,20\n\002burning felguard\00110263,4,,16\n\002bayne\00110356,3,,5\n\002ressan el agujas\00110357,3,,16\n\002ressan the needler\00110357,3,,18\n\002sombra de felicent\00110358,3,,18\n\002fellicents shade\00110358,3,,17\n\002sriskulk\00110359,3,,9\n\002colmillo de cristal\00110376,4,,19\n\002crystal fang\00110376,4,,12\n\002skul\00110393,4,,4\n\002jed vigia de las runas\00110509,4,,22\n\002jed runewatcher\00110509,4,,15\n\002cantachimeneas forresten\00110558,4,,24\n\002hearthsinger forresten\00110558,4,,22\n\002lady vespia\00110559,3,,11\n\002urok aullasino\00110584,4,,14\n\002urok doomhowl\00110584,4,,13\n\002rorgish jowl\00110639,3,,12\n\002pataroble\00110640,3,,9\n\002oakpaw\00110640,3,,6\n\002quebrarramas\00110641,3,,12\n\002branch snapper\00110641,3,,14\n\002eckalom\00110642,3,,8\n\002aletereje\00110643,3,,9\n\002mugglefin\00110643,3,,9\n\002aullanieblas\00110644,3,,12\n\002mist howler\00110644,3,,11\n\002principe raze\00110647,3,,13\n\002prince raze\00110647,3,,11\n\002timmy el cruel\00110808,4,,14\n\002timmy the cruel\00110808,4,,15\n\002pidrespina\00110809,4,,10\n\002stonespine\00110809,4,,10\n\002duggan martillo salvaje\00110817,3,,23\n\002duggan wildhammer\00110817,3,,17\n\002death knight soulbearer\00110818,3,,23\n\002baron bloodbane\00110819,3,,15\n\002duque atracador\00110820,3,,15\n\002duke ragereaver\00110820,3,,15\n\002hedmush el podrido\00110821,3,,19\n\002hedmush the rotting\00110821,3,,20\n\002senor de la guerra threshjin\00110822,3,,29\n\002warlord threshjin\00110822,3,,18\n\002ramurdimbre zulbrin\00110823,3,,20\n\002zulbrin warpbranch\00110823,3,,19\n\002senor forestal lanzalcon\00110824,3,,24\n\002ranger lord hawkspear\00110824,3,,21\n\002gish el inamovible\00110825,3,,18\n\002gish the unmoving\00110825,3,,17\n\002lord hoz oscura\00110826,3,,15\n\002lord darkscythe\00110826,3,,15\n\002portavoz de la muerte selendre\00110827,3,,30\n\002deathspeaker selendre\00110827,3,,21\n\002alta general abbendis\00110828,4,,21\n\002high general abbendis\00110828,4,,21\n\002mushgog\00111447,4,,7\n\002el razza\00111497,4,,8\n\002the razza\00111497,4,,9\n\002skarr el inquebrantable\00111498,4,,23\n\002skarr the unbreakable\00111498,4,,21\n\002kelemis the lifeless\00111580,3,,20\n\002centauro maldito\00111688,3,,16\n\002cursed centaur\00111688,3,,14\n\002ursollok\00112037,3,,9\n\002sacerdotisa de elune\00112116,4,,20\n\002priestess of elune\00112116,4,,18\n\002meshlok el cosechador\00112237,4,,21\n\002meshlok the harvester\00112237,4,,21\n\002mandisangre\00112431,3,,11\n\002gorefang\00112431,3,,8\n\002viejo malafauce\00112432,3,,15\n\002old vicejaw\00112432,3,,11\n\002krethis tejeumbra\00112433,3,,17\n\002krethis shadowspinner\00112433,3,,21\n\002barbascamas\00113896,4,,11\n\002scalebeard\00113896,4,,10\n\002gashnak the cannibal\00113977,4,,21\n\002ushalac the gloomdweller\00114016,4,,24\n\002rezrelek\00114018,4,,8\n\002tatterhide\00114019,4,,10\n\002gravis nudocorredizo\00114221,3,,20\n\002gravis slipknot\00114221,3,,15\n\002araga\00114222,3,,5\n\002cascarrabias ben\00114223,3,,16\n\002cranky benj\00114223,3,,11\n\0027xt\00114224,3,,4\n\002principe kellen\00114225,3,,15\n\002prince kellen\00114225,3,,13\n\002kaskk\00114226,3,,5\n\002hissperak\00114227,3,,9\n\002mueca\00114228,3,,5\n\002giggler\00114228,3,,7\n\002filozante detestable\00114229,3,,20\n\002accursed slitherblade\00114229,3,,21\n\002ojo ladron\00114230,3,,10\n\002burgle eye\00114230,3,,10\n\002drogoth el vagabundo\00114231,3,,20\n\002drogoth the roamer\00114231,3,,18\n\002dardo\00114232,3,,5\n\002dart\00114232,3,,4\n\002rasgascama\00114233,3,,10\n\002ripscale\00114233,3,,8\n\002hayoc\00114234,3,,5\n\002el podrido\00114235,3,,10\n\002the rot\00114235,3,,7\n\002senor pescador\00114236,3,,14\n\002lord angler\00114236,3,,11\n\002mocogusano\00114237,3,,10\n\002oozeworm\00114237,3,,8\n\002shanda la giratoria\00114266,3,,19\n\002shanda the spinner\00114266,3,,18\n\002emogg el triturador\00114267,4,,19\n\002emogg the crusher\00114267,4,,17\n\002lord condar\00114268,3,,11\n\002buscador aqualon\00114269,3,,16\n\002seeker aqualon\00114269,3,,14\n\002squiddic\00114270,3,,8\n\002rompecostillas\00114271,3,,14\n\002ribchaser\00114271,3,,9\n\002llamagrunos\00114272,3,,11\n\002snarlflare\00114272,3,,10\n\002corapetra\00114273,3,,9\n\002boulderheart\00114273,3,,12\n\002tamra pico tormenta\00114275,4,,19\n\002tamra stormpike\00114275,4,,15\n\002rasgabranquia\00114276,3,,13\n\002scargil\00114276,3,,7\n\002lady zephris\00114277,3,,12\n\002robark\00114278,3,,7\n\002trepazoso\00114279,3,,9\n\002creepthess\00114279,3,,10\n\002gran samras\00114280,3,,11\n\002big samras\00114280,3,,10\n\002jimmy el sangrador\00114281,3,,18\n\002jimmy the bleeder\00114281,3,,17\n\002aullador de la muerte\00114339,3,,21\n\002death howl\00114339,3,,10\n\002alshirr respiramiedo\00114340,3,,20\n\002alshirr banebreath\00114340,3,,18\n\002felendor the accuser\00114341,3,,20\n\002patafuria\00114342,3,,9\n\002ragepaw\00114342,3,,7\n\002olm el sabio\00114343,3,,12\n\002olm the wise\00114343,3,,12\n\002mongress\00114344,3,,8\n\002el ongar\00114345,3,,8\n\002the ongar\00114345,3,,9\n\002lodonante\00114424,3,,9\n\002mirelow\00114424,3,,7\n\002roehuesos\00114425,3,,9\n\002gnawbone\00114425,3,,8\n\002harb monte fetido\00114426,3,,17\n\002harb foulmountain\00114426,3,,17\n\002gibblesnik\00114427,3,,10\n\002uruson\00114428,3,,6\n\002faucenestra\00114429,3,,11\n\002grimmaw\00114429,3,,7\n\002acechapolvo\00114430,3,,11\n\002duskstalker\00114430,3,,11\n\002furia shelda\00114431,3,,12\n\002fury shelda\00114431,3,,11\n\002threggil\00114432,3,,8\n\002barrosin\00114433,3,,8\n\002sludginn\00114433,3,,8\n\002lord capitan wyrmak\00114445,4,,19\n\002lord captain wyrmak\00114445,4,,19\n\002fingat\00114446,3,,6\n\002gilmorian\00114447,3,,9\n\002fundespino\00114448,3,,10\n\002molt thorn\00114448,3,,10\n\002setis\00114471,4,,5\n\002gretheer\00114472,3,,8\n\002lapress\00114473,4,,7\n\002zora\00114474,4,,4\n\002rex ashil\00114475,4,,9\n\002krellack\00114476,3,,8\n\002grubthor\00114477,3,,8\n\002huricanian\00114478,3,,10\n\002senor crepuscular everun\00114479,3,,24\n\002twilight lord everun\00114479,3,,20\n\002gluggle\00114487,3,,7\n\002roloch\00114488,3,,6\n\002rippa\00114490,3,,5\n\002kurmokk\00114491,3,,7\n\002verifonix\00114492,3,,9\n\002horror torpe\00114697,3,,12\n\002lumbering horror\00114697,3,,16\n\002espiritu de los malditos\00116379,3,,24\n\002spirit of the damned\00116379,3,,20\n\002bruja osaria\00116380,3,,12\n\002bone witch\00116380,3,,10\n\002sandworm\00117075,4,,8\n"
local TREASURE_BLOB = "\002worn wooden chest\0011765,2,,17\n\002hidden strongbox\0012039,2,,16\n\002giant clam\0012744,2,,10\n\002battered chest\0012843,2,,14\n\002battered chest\0012849,2,,14\n\002solid chest\0012850,2,,11\n\002solid chest\0012852,2,,11\n\002solid chest\0012855,2,,11\n\002solid chest\0012857,2,,11\n\002solid chest\0014149,2,,11\n\002giant clam\00119017,2,,10\n\002giant clam\00119018,2,,10\n\002battered chest\001106318,2,,14\n\002battered chest\001106319,2,,14\n\002solid chest\001153451,2,,11\n\002solid chest\001153453,2,,11\n\002solid chest\001153454,2,,11\n\002large solid chest\001153463,2,,17\n\002ungoro dirt pile\001157936,2,,17\n\002waterlogged footlocker\001179487,2,,22\n\002waterlogged footlocker\001179489,2,,22\n\002waterlogged footlocker\001179491,2,,22\n\002dented footlocker\001179492,2,,17\n\002dented footlocker\001179494,2,,17\n\002dented footlocker\001179496,2,,17\n"

function RareData.Index(kind)
	if kind == "rare" then return RARE_BLOB end
	if kind == "treasure" then return TREASURE_BLOB end
	return nil
end

-- Integracion y registro en el namespace Codex nativo de TuWoW
if ns.Codex then
	ns.Codex.Register("meta", { name = "TuWoW Leveling Codex", version = "1.0", author = "TuWoW" })
	ns.Codex.RegisterIndex("rare", RARE_BLOB)
	ns.Codex.RegisterIndex("treasure", TREASURE_BLOB)
	
	local origIndex = ns.Codex.Index
	ns.Codex.Index = function(kind)
		local b = RareData.Index(kind)
		if b then return b end
		return origIndex and origIndex(kind)
	end

	local origNpc = ns.Codex.Npc
	ns.Codex.Npc = function(id)
		local rec = RareData.Get("rare", id)
		if rec then return rec end
		return origNpc and origNpc(id)
	end
	
	local origObject = ns.Codex.Object
	ns.Codex.Object = function(id)
		local rec = RareData.Get("treasure", id)
		if rec then return rec end
		return origObject and origObject(id)
	end

	local origItem = ns.Codex.Item
	ns.Codex.Item = function(id)
		if origItem then
			local it = origItem(id)
			if it then return it end
		end
		return RareData.Item(id)
	end

	local origEach = ns.Codex.Each
	ns.Codex.Each = function(kind, fn)
		if kind == "rare" or kind == "treasure" then
			RareData.Each(kind, fn)
			return
		end
		if origEach then origEach(kind, fn) end
	end

	local origName = ns.Codex.Name
	ns.Codex.Name = function(kind, id)
		local n = RareData.Name(kind, id)
		if n then return n end
		return origName and origName(kind, id)
	end

	local origLoot = ns.Codex.Loot
	ns.Codex.Loot = function(kind, id)
		local l = RareData.Loot(kind, id)
		if l and #l > 0 then return l end
		return origLoot and origLoot(kind, id) or {}
	end
end
