math.randomseed(os.time())


function mysplit(inputstr, sep)
  if sep == nil then
    sep = "%s"
  end
  local t = {}
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
    table.insert(t, str)
  end
  return t
end


local function RandomQuoteAndSource()
	QuoteFile = io.open('quotes', 'r')
	QuoteTable = {}
	for line in QuoteFile:lines() do
		table.insert(QuoteTable, line)
	end
	LineNo = math.random( #QuoteTable )
	Output = mysplit(QuoteTable[LineNo], '/')
	return Output
end


local function TextGen(HeadText, Font)
	Headertext = ""
	tmpHeaderFile = os.tmpname()
	local command = "figlet -f "..Font..".flf "..HeadText.." > "
	os.execute(command..tmpHeaderFile)
	for line in io.lines(tmpHeaderFile) do
		Headertext = Headertext..line..'\n'
	end
	Headertext = string.rep('\n',8) .. Headertext .. '\n\n'
	Headertext = mysplit(Headertext,'\n')
	os.remove(tmpHeaderFile)
	return Headertext
end


local RandomOut = RandomQuoteAndSource()
local HeaderOut = TextGen(RandomOut[1], "rebel")
local FooterOut = RandomOut[2]


return {
{
	  'nvimdev/dashboard-nvim',
	  event = 'VimEnter',
 	 config = function()
 	   require('dashboard').setup {
      			theme='doom',

      			disable_move=true,
 		     	config = {
				header=HeaderOut,
				footer={FooterOut}
			}
		}	

	end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
}



