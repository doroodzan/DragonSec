do

function run(msg, matches)
   send_document(get_receiver(msg), "./data/animation.element.mp4", ok_cb, false)
end

return {
patterns = {
"^[#/!][Dd][Rr][Aa][Gg][Oo][Nn][Ss][Ee][Cc]$",

},
run = run
}

end
