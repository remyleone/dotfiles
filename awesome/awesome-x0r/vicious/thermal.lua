---------------------------------------------------
-- Licensed under the GNU General Public License v2
--  * (c) 2010, Adrian C. <anrxc@sysphere.org>
---------------------------------------------------

-- {{{ Grab environment
local type = type
local tonumber = tonumber
local setmetatable = setmetatable
local string = { match = string.match }
local helpers = require("vicious.helpers")
-- }}}


-- Thermal: provides temperature levels of ACPI and coretemp thermal zones
module("vicious.thermal")


-- {{{ Thermal widget type
local function worker(format, warg)
    local thermal = helpers.pathtotable("/sys/devices/platform/thinkpad_hwmon/")
    if thermal[warg] then
	    return {thermal[warg] / 1000}
    end

    return {0}
end
-- }}}

setmetatable(_M, { __call = function(_, ...) return worker(...) end })
