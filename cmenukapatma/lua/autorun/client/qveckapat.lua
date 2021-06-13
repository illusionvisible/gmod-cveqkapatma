local function qcmenu()
    local ply = LocalPlayer()
    local color = Color( 255, 0, 0 )
    local color2 = Color( 255, 255, 255 )

    local yetkililer = {
        ["superadmin"] = true,
        ["admin"] = true,
    }
    
    if yetkililer[LocalPlayer():GetUserGroup()] then
        return true
    else 
        chat.AddText( color, "[X Roleplay] ", color2, ply ," bu menüyü kullanamazsın.") -- Yetkili olmayanlarda verecek hata
        return false
    end
end

hook.Add( "SpawnMenuOpen", "YetkiliSpawnMenu", qcmenu )

hook.Add( "ContextMenuOpen", "YetkılıContextMenu", qcmenu )