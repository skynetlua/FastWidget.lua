# FastWidget.lua
a mini fast lua framework that make html

## example
```
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
```

## result

```
<table class="table" border="1" >
  <caption >The Languages</caption>
  <thead >
    <tr >
      <th >language</th>
      <th >rank</th>
      <th >star</th>
      <th >operate</th>
    </tr>
  </thead>
  <tbody >
    <tr >
      <td >C</td>
      <td >1</td>
      <td >*****</td>
      <td ><a href=''>Button</a></td>
    </tr>
    <tr >
      <td >lua</td>
      <td >1</td>
      <td >*****</td>
      <td ><a href=''>Button</a></td>
    </tr>
    <tr >
      <td >C++</td>
      <td >1</td>
      <td >****</td>
      <td ><a href=''>Button</a></td>
    </tr>
    <tr >
      <td >js</td>
      <td >1</td>
      <td >****</td>
      <td ><a href=''>Button</a></td>
    </tr>
    <tr >
      <td >golang</td>
      <td >1</td>
      <td >****</td>
      <td ><a href=''>Button</a></td>
    </tr>
  </tbody>
</table>

```