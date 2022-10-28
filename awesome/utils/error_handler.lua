local naughty = require("naughty")

if awesome.startup_errors then
    naughty.notify({
        preset = naughty.config.presets.critical,
        title = "Ha ocurrido algún error durante el inicio.",
        text = awesome.startup_errors,
    })
end

do
    local in_error = false
    awesome.connect_signal(
        "debug::error",
        function(err)
            if in_error then return end
            in_error = true
            naughty.notify({
                preset = naughty.config.presets.critical,
                title = "Ha ocurrido un error.",
                text = tostring(err)
            })
            in_error = false
        end
    )
end
