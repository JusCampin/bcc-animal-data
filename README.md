# bcc-animal-data

Shared, read-only animal metadata for BCC RedM resources.

## Exports

All exports are available on both client and server:

```lua
local animal = exports['bcc-animal-data']:GetAnimal(`a_c_deer_01`)
local supported = exports['bcc-animal-data']:IsAnimalSupported(modelHash)
local cargoUnits = exports['bcc-animal-data']:GetCargoUnits(modelHash, 1)
local animals = exports['bcc-animal-data']:GetAllAnimals()
```

The catalog contains stable shared facts such as model, label, category, and
cargo units. Consumer-specific values such as butcher prices, rewards, wagon
capacity, and job requirements should remain in their respective resources.
