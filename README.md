# Malik "MK" Oduya — Personaje influencer 3D

Personaje **completamente ficticio**: influencer masculino de piel oscura, creado para generación 3D con [Tripo](https://www.tripo3d.ai/).

## Concepto

| Rasgo | Detalle |
| --- | --- |
| Nombre | Malik "MK" Oduya |
| Edad | 26 años |
| Ocupación | Influencer de moda urbana y tecnología |
| Personalidad | Carismático, seguro de sí mismo, cercano |
| Piel | Oscura, tono caoba profundo |
| Rostro | Barba corta y perfilada, ojos color avellana |
| Cabello | Rastas recogidas en un moño alto |
| Outfit | Chaqueta bomber holgada color crema sobre camiseta negra, pantalón cargo gris pizarra, zapatillas chunky blancas con detalles naranjas |
| Accesorios | Cadena de plata fina, smartwatch |
| Estilo visual | Estilizado-realista, cuerpo completo, pose neutra |

## Generación del modelo 3D

El prompt optimizado está en [`prompts/text-to-3d.txt`](prompts/text-to-3d.txt).

### Opción A — Tripo CLI (recomendada)

```bash
npx tripo-cli@latest login --region ov --yes   # una sola vez
bash scripts/generate.sh                        # genera model.glb + preview.png
```

### Opción B — Consola web de Tripo

Pega el contenido de `prompts/text-to-3d.txt` en el generador text-to-3D de
developers.tripo3d.ai con texturas PBR activadas (≈20 créditos, GLB de salida).

## Pasos opcionales

- **Rig + animación** (caminar, saludar, bailar): ≈35 créditos adicionales.
- **Conversión a FBX** para Unity/Unreal, o **USDZ** para AR en iOS.
- **STL** si quieres imprimirlo como figura.

## Estructura

```
prompts/text-to-3d.txt   Prompt de generación (inglés, optimizado)
scripts/generate.sh      Pipeline completo con tripo-cli
assets/                  Aquí caerán model.glb y preview.png tras generar
```
