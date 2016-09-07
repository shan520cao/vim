
set tags=tags;

syntax on

"set mouse=a
set autoindent

set cindent
set suffixes=.o,.bak,~,.a,.so,.swp
set nu

set hlsearch
set incsearch

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set tabstop=4
set shiftwidth=4

" lookupfile.vim plungin config
"-----------------------------------------------
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
"let g:LookupFile_SortMethod = ""                "关闭对搜索结果的字母排序
if filereadable("./filenametags")                "设置tag文件的名字
let g:LookupFile_TagExpr ='"./filenametags"'
endif

" minibufexplorer plugin config
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0

" NERDTree plugin config
let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|TagList"

function! NERDTree_Start()
	exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
        return 1
endfunction

nmap wm :WMToggle<CR>
nmap wt :Tlist<CR>
nmap wf :NERDTree<CR>


"config grep.vim
let Grep_Default_Options = '-r' 
nnoremap <silent> <F3> :Grep<CR>

if has("cscope")
""	set csprg=/usr/bin/cscope
"	set cscopequickfix=s-,c-,d-,i-,t-,e-
	set csto=1
	let g:autocscope_menus=0
"	set cst
	set nocsverb
	set cspc=3
"	"add any database in current dir
"	if filereadable("cscope.out")
"		cs add cscope.out
"		"else search cscope.out elsewhere
"	else
"		let cscope_file=findfile("cscope.out", ".;")
"		let cscope_pre=matchstr(cscope_file, ".*/")
"		if !empty(cscope_file) && filereadable(cscope_file)
"			exe "cs add" cscope_file cscope_pre
"		endif      
"	endif
"
	nmap fs :cs find s <C-R>=expand("<cword>")<CR><CR>	
	nmap fg :cs find g <C-R>=expand("<cword>")<CR><CR>	
	nmap fc :cs find c <C-R>=expand("<cword>")<CR><CR>	
	nmap ft :cs find t <C-R>=expand("<cword>")<CR><CR>	
	nmap fe :cs find e <C-R>=expand("<cword>")<CR><CR>	
	nmap ff :cs find f <C-R>=expand("<cfile>")<CR><CR>	
	nmap fi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap fd :cs find d <C-R>=expand("<cword>")<CR><CR>

endif
