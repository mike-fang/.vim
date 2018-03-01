"syn match protoStr '"\w\+"'
"syn match protoParam '\w\+_param' 
"syn keyword protoKeyword name type bottom top nextgroup=protoStr
"syn keyword protoLayer layer
""syn region layerBlock start=/{/ end=/}/ fold transparent 
"syn region paramBlock 
""contains=protoStr,protoKeyword
"
"hi def link protoStr		Constant
"hi def link protoKeyword	Type
"hi def link protoLayer		Function
"hi def link protoParam		Function

syn region layerBlock start="{" end="}" fold transparent
syn region paramBlock matchgroup=paramSnip start="\s\w\+param {" end="}$" fold

syn match protoStr '"\w\+"'
syn keyword layerKeyword name type bottom top nextgroup=protoStr
syn keyword Layer layer
syn match paramKeyword '\s\w\+:' containedin=paramBlock
syn match paramNum '\s\d\+' containedin=paramBlock


hi def link protoStr		Constant
hi def link layerKeyword	Type
hi def link Layer			Function
hi def link paramSnip		Special
hi def link paramKeyword	Type
hi def link paramNum		Number
