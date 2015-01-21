--[[
    Peak-PLM redis lua tools 
    Copyright (C) 2014 Jan Jansen

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]--

local view_definition_json = ARGV[1]
local view_definition = cjson.decode(view_definition_json)

local start_item_id = view_definition["StartItemId"]

local start_item_json = redis.pcall("get", start_item_id)
local start_item = cjson.decode(start_item_json)

local view_item = {}

local item_id_stack = {start_item}

while (item_id_stack.length >0)

1. Ceck if create new view_item
2. Create new view_item (append to table with attribute "view_items")


end


return start_item["ItemType"]



