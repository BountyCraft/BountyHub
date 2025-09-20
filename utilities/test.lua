return {
    info = function(msg) print("[INFO] " .. msg) end,
    warn = function(msg) warn("[WARN] " .. msg) end,
    error = function(msg) error("[ERROR] " .. msg) end
}