setlocal spell
setlocal spelllang=en_us

setlocal wrap
setlocal linebreak
setlocal textwidth=0
setlocal wrapmargin=0

nmap j gj
nmap k gk
nmap $ g$
nmap 0 g0

nmap <silent> <F5> :AsyncRun make<CR>
