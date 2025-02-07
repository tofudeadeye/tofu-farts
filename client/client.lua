-- Example command that could be used to trigger a fart sound

RegisterCommand('playerfart', function(source, args)
    -- args[1] needs to be value of GetPlayerServerId()
    -- args[2] needs to be the name of the fart sound
    --         which is defined in data/customfarts_sounds.dat54.rel.xml
    --         examples include: fart01, fart02, fart03, fart04
    TriggerServerEvent('tofu-farts:server:doFart', args[1], args[2])
end, false)


RegisterNetEvent('tofu-farts:client:doFart', function(fartSound)
    print('playing fartSound', fartSound)
    while not RequestScriptAudioBank('tofu-farts/customfarts', false) do Wait(0) end
    fartSound = fartSound or 'fart01'

    local soundId = GetSoundId()
    PlaySoundFromEntity(
        soundID,
        fartSound,
        GetPlayerPed(PlayerId()),
        'tofu-farts',
        true
    )
    ReleaseSoundId(soundId)
    ReleaseNamedScriptAudioBank('tofu-farts/customfarts')
end)
