-- Example command that could be used to trigger a fart sound

RegisterCommand('playerfart', function(source, args)
    while not RequestScriptAudioBank('tofu-farts/customfarts', false) do Wait(0) end
    if #args ~= 1 then return end

    local soundId = GetSoundId()
    PlaySoundFromEntity(
        soundID,
        args[1],
        PlayerPedId(),
        'tofu-farts',
        true
    )
    ReleaseSoundId(soundId)
    ReleaseNamedScriptAudioBank('tofu-farts/customfarts')
end, false)


RegisterNetEvent('tofu-farts:client:doFart', function(fartSound)
    while not RequestScriptAudioBank('tofu-farts/customfarts', false) do Wait(0) end
    fartSound = fartSound or 'fart01'

    local soundId = GetSoundId()
    PlaySoundFromEntity(
        soundID,
        fartSound,
        PlayerPedId(),
        'tofu-farts',
        true
    )
    ReleaseSoundId(soundId)
    ReleaseNamedScriptAudioBank('tofu-farts/customfarts')
end)
