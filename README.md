# bcc-animal-data

Animal quality returned by `GetQualityFromProvision` uses the native scale:
`0` is poor, `1` is good, and `2` is perfect. Add one only when displaying
player-facing stars.

Shared, read-only animal metadata for BCC RedM resources.

## Exports

All exports are available on both client and server:

```lua
local animal = exports['bcc-animal-data']:GetAnimal(`a_c_deer_01`)
local supported = exports['bcc-animal-data']:IsAnimalSupported(modelHash)
local cargoUnits = exports['bcc-animal-data']:GetCargoUnits(modelHash, 1)
local quality = exports['bcc-animal-data']:GetQualityFromProvision(provisionHash)
local animals = exports['bcc-animal-data']:GetAllAnimals()
```

The catalog contains stable shared facts such as model, label, category, cargo
units, `butcherable`, `skinnable`, `wagonStorable`, `carcassType`, and
`legendary`. Fish, pelt-only models, and oversized aquatic models remain
discoverable while their capability flags prevent consumers from treating them
as ordinary wagon carcasses or current butcher sales. Fish are marked as
inventory items for a future inventory-based selling integration.

Special story models such as the Mangy Lion remain catalogued for testing but
are not advertised as skinnable, butcherable, or hunting-wagon cargo because
the game does not provide them with the ordinary carcass interaction lifecycle.

Consumer-specific values such as butcher prices, rewards, wagon capacity, and
job requirements should remain in their respective resources.
