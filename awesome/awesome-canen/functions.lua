-- {{{ Volume  
cardid  = 0
channel = "Master"
function volume (mode, widget)
  if mode == "update" then
              local fd = io.popen("amixer -c " .. cardid .. " -- sget " .. channel)
              local status = fd:read("*all")
              fd:close()
    
    local volume = string.match(status, "(%d?%d?%d)%%")
    volume = string.format("% 3d", volume)

    status = string.match(status, "%[(o[^%]]*)%]")

    if string.find(status, "on", 1, true) then
      volume = volume .. "%"
    else
      volume = volume .. "M"
    end
    widget.text = volume
  elseif mode == "up" then
    awful.util.spawn("amixer -q -c " .. cardid .. " sset " .. channel .. " 5%+")
    volume("update", widget)
  elseif mode == "down" then
    awful.util.spawn("amixer -q -c " .. cardid .. " sset " .. channel .. " 5%-")
    volume("update", widget)
  else
    awful.util.spawn("amixer -c " .. cardid .. " sset " .. channel .. " toggle")
    volume("update", widget)
  end
end

-- }}}

-- {{{ Set an icon
function set_icon(image_file, align) 
  if align == nil then
    align = "right"
  end

  icon = widget({
    type = "imagebox",
    align = align
  })

  icon.image = image(image_file)
  icon.resize = false
  icon.valign = "center"
 
  return icon
end
-- }}}
