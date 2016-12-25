
local function run(msg, matches)
	if #matches < 2 then
		return "متنی که میخای به فارسی تبدیل کنمو بده"
	end

	local font_base = 
	"A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,;,',,],_"
	local fonts = {
		"ش,ذ,ز,ی,ث,ب,ل,ا,ه,ت,ن,م,پ,د,خ,ح,ض,ق,س,ف,ع,ر,ص,ط,غ,ظ,ک,گ,و,ج,چ,پ",
	}
	local result = {}
	i=0
	for k=1,#fonts do
		i=i+1
		local tar_font = fonts[i]:split(",")
		local text = matches[2]
		local text = text:gsub("a",tar_font[1])
		local text = text:gsub("b",tar_font[2])
		local text = text:gsub("c",tar_font[3])
		local text = text:gsub("d",tar_font[4])
		local text = text:gsub("e",tar_font[5])
		local text = text:gsub("f",tar_font[6])
		local text = text:gsub("g",tar_font[7])
		local text = text:gsub("h",tar_font[8])
		local text = text:gsub("i",tar_font[9])
		local text = text:gsub("j",tar_font[10])
		local text = text:gsub("k",tar_font[11])
		local text = text:gsub("l",tar_font[12])
		local text = text:gsub("m",tar_font[13])
		local text = text:gsub("n",tar_font[14])
		local text = text:gsub("o",tar_font[15])
		local text = text:gsub("p",tar_font[16])
		local text = text:gsub("q",tar_font[17])
		local text = text:gsub("r",tar_font[18])
		local text = text:gsub("s",tar_font[19])
		local text = text:gsub("t",tar_font[20])
		local text = text:gsub("u",tar_font[21])
		local text = text:gsub("v",tar_font[22])
		local text = text:gsub("w",tar_font[23])
		local text = text:gsub("x",tar_font[24])
		local text = text:gsub("y",tar_font[25])
		local text = text:gsub("z",tar_font[26])
		local text = text:gsub(";",tar_font[27])
	  local text = text:gsub("'",tar_font[28])
		local text = text:gsub(",",tar_font[29])
	  local text = text:gsub("]",tar_font[30])
		local text = text:gsub("/",tar_font[31])
		
	table.insert(result, text)
	end
	local result_text = ""
	a=0
	for v=1,#result do
		a=a+1
		result_text = ""..result[a].."\n"
	end
	return result_text.."\n"
end

return {
	description = "tofa ",
	usage = {"tofa [text] :تبدیل تایپ انگلیسی به فارسی  ",},
	patterns = {
		"(tofa) (.*)",
		"(tofa)",
		},
	run = run
}
--[[

   channel @openplugins
by #mobin (xXCRAZYBOyXx)
	 
]]

