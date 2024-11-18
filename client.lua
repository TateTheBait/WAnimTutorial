-- WrenchOS
RegisterCommand('playmyanim', function(f, args)
    local dictName = 'tutorial_anim'
    local animName = 'raisehands_clip'
  
    -- Request animation dictionary.
    RequestAnimDict(dictName)
    while not HasAnimDictLoaded(dictName) do
      Wait(1)
    end
    -- Play animation on player ped.
    local playerPed = PlayerPedId()
    local a, b=TaskPlayAnim(playerPed, dictName, animName, 4.0, 4.0, -1, 1, 0.0)
    -- Unload animation dictionary.
    RemoveAnimDict(dictName)
  end, false)