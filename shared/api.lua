local function resolveModelHash(model)
    if type(model) == 'number' then return model end
    if type(model) == 'string' and model ~= '' then return joaat(model) end
    return nil
end

local function copyAnimal(animal)
    if type(animal) ~= 'table' then return nil end
    local copy = {}
    for key, value in pairs(animal) do copy[key] = value end
    return copy
end

local function getAnimal(model)
    return AnimalData[resolveModelHash(model)]
end

exports('GetAnimal', function(model)
    return copyAnimal(getAnimal(model))
end)

exports('IsAnimalSupported', function(model)
    return getAnimal(model) ~= nil
end)

exports('GetCargoUnits', function(model, fallback)
    local animal = getAnimal(model)
    return animal and animal.cargoUnits or fallback
end)

exports('GetQualityFromProvision', function(provisionHash)
    return AnimalQualityByProvision[tonumber(provisionHash)]
end)

exports('GetAllAnimals', function()
    local animals = {}
    for modelHash, animal in pairs(AnimalData) do
        animals[modelHash] = copyAnimal(animal)
    end
    return animals
end)
