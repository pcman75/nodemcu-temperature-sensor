local module = {}

require "config"

function module.start()  
    if not tmr.create():alarm(weather_read_interval, tmr.ALARM_AUTO, function()
        print("hey")
        end)
    then
        print("Error creating timer")
    end
end

return module  
