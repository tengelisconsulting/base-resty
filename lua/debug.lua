local log = require "lua/log"

local function debug_handle()
   log.info("---------------------------------------------------")
   log.info("METHOD: %s", ngx.req.get_method())
   local req_headers = ngx.req.get_headers()
   log.info("HEADERS: %s", log.table_print(req_headers))
   ngx.req.read_body()
   local data = ngx.req.get_body_data()
   log.info("DATA: %s", data)
   log.info("---------------------------------------------------")
end

local M = {}
M.debug_handle = debug_handle
return M
