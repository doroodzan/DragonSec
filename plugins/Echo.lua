local function run(msg, matches)
  local text = matches[2]
  local b = 1

  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
    text,b = text:gsub('^/+','')
    text,b = text:gsub('^#+','')
  end
  if is_momod(msg) then
  return text
else
  return 'Only Moderators Can!'
end
end
return {
  description = "Simplest plugin ever!",
  usage = "/echo [whatever]: echoes the msg",
  patterns = {
    "^[!/#]([Ee]cho) +(.+)$",
    "^([Ee]cho) +(.+)$",
 "^بگو +(.+)$",
  }, 
  run = run 
}