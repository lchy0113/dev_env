set nocompatible     " 오리지날 VI와 호환하지 않음
set autoindent       " 자동 들여쓰기
set cindent          " C 프로그래밍용 자동 들여쓰기
set smartindent      " 스마트한 들여쓰기
set wrap
set nowrapscan       " 검색할 때 문서의 끝에서 처음으로 안돌아감
set nobackup         " 백업 파일을 안만듬
set noswapfile
set visualbell      " 키를 잘못눌렀을 때 화면 프레시
set ruler            " 화면 우측 하단에 현재 커서의 위치(줄,칸) 표시
set shiftwidth=4     " 자동 들여쓰기 4칸
set number           " 행번호 표시, set nu 도 가능
set fencs=ucs-bom,utf-8,euc-kr.latin1 " 한글 파일은 euc-kr로, 유니코드는 유니코드로
set fileencoding=utf-8 " 파일저장인코딩
set tenc=utf-8       " 터미널 인코딩
"set expandtab       " 탭대신 스페이스
set hlsearch         " 검색어 강조, set hls 도 가능
set ignorecase       " 검색시 대소문자 무시, set ic 도 가능
set tabstop=4        " 탭을 4칸으로
set lbr
set incsearch        " 키워드 입력시 점진적 검색
set cursorline       " 편집 위치에 커서 라인 설정
set laststatus=2     " 상태바 표시를 항상한다
syntax on "  구문강조 사용
filetype indent on   " 파일 종류에 따른 구문강조
set background=dark  " 하이라이팅 lihgt / dark
"colorscheme evening  "  vi 색상 테마 설정
set backspace=eol,start,indent "  줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set history=1000     " vi 편집기록 기억갯수 .viminfo에 기록
highlight Comment term=bold cterm=bold ctermfg=4 " 코멘트 하이라이트
"set mouse=a          " vim에서 마우스 사용
set t_Co=256         " 색 조정


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'vundleVim/Vundle.vim'
	Plugin 'The-NERD-Tree' 	"계층 별로 파일을 보고 접근할 수 있다.
	Plugin 'Source-Explorer-srcexpl.vim' 
	Plugin 'SrcExpl' 		"커서가 지시하는 변수들의 정보를 보여줌
	Plugin 'taglist.vim' 	"ctags를 사용하여 소스코드 파일에서 함수, 전역 변수 리스트를 확인할 수 있는 강력한 사이드바를 제공
	Plugin 'AutoComplPop' 	"자동완성 플러긴
	Plugin 'snipMate' 		"for, while과 같은 예약어를 입력할 경우 snip code를 자동으로 제공해 준다. ~/.vim/snippets 에 제공 기준이 있음.
	Plugin 'Lokaltog/vim-easymotion'	"한 화면에서 커서이동, 현재 보이는 화면에서 커서를 이동할 때 사용한다. 
	Plugin 'scrooloose/nerdcommenter'	"주석, 코드를 입력할 때 파일의 종류에 따라서 주석을 붙여준다. 
	Plugin 'bling/vim-airline'	"상태 바, Vim 사용자의 하단 상태바를 변경한다. 
	Plugin 'majutsushi/tagbar'	"ctags 결과 표시, ctags 로 생성된 결과를 보여준다. 
	Plugin 'plasticboy/vim-markdown'
"	Plugin 'Valloric/YouCompleteMe'	"코드 완성 엔진, 
call vundle#end()


 "ctags macro setting
if version >= 500 " vim 버전이 5.0 이상일 때만 적용하게 만들 었다.
func! Sts() 
	let st = expand("<cword>") " let을 이용해서 st라는 변수를 생성 한다.  exe를 이용해서 뒤에나온 명령어를 출력 한다. .st를 출력한다.
		exe "sts ".st
endfunc
" ,st와 Sts()함수를 매핑 하였다.
nmap ,st :call Sts()<cr>

func! Tj()
	let tj = expand("<cword>")
		exe "tj ".tj
endfunc
nmap ,tj :call Tj()<cr>
endif


"ctags
set tags+=/home/lchy0113/development/u-boot/tags

"cscope
cs add /home/lchy0113/development/u-boot/cscope.out

