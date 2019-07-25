

local Widget = require "widget"


local keys = {"language", "rank", "star", "operate"}
local vals = {
   {"C", 1, "*****"},
   {"lua", 1, "*****"},
   {"C++", 1, "****"},
   {"js", 1, "****"},
   {"golang", 1, "****"}
}

local html_table = Widget("table", {class = "table", border = "1"})
html_table:new("caption", "The Languages")
local tr = html_table:new("thead"):new("tr")
tr:batch("th", keys)
local tbody = html_table:new("tbody")
for i,val in ipairs(vals) do
    local tr = tbody:new("tr")
    tr:batch("td", val)
    tr:new("td", "<a href=''>Button</a>")
end

local retval = html_table:goodecho()
print(retval)
