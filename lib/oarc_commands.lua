-- Add a command to let people call droppods to themselves
commands.add_command("oarc-wheres-my-cargo-pod", {"oarc-command-dude-wheres-my-cargo-pod"}, function(command)
    if command.player_index == nil then return end -- Ignore if it's not a player
    DudeWheresMyCargoPod(game.players[command.player_index])
end)

-- Allow spawn rerolls
commands.add_command("oarc-reroll-spawn", {"oarc-command-reroll-spawn"}, function(command)
    if command.player_index == nil then return end -- Ignore if it's not a player
    RerollSpawn(game.players[command.player_index])
end)

-- Trigger immediate regrowth cleanups
commands.add_command("oarc-trigger-cleanup", {"oarc-command-trigger-cleanup"}, function(command)
    if command.player_index ~= nil and not game.get_player(command.player_index).admin then return end -- Only admins can call this.
    TriggerCleanup()
end)