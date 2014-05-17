
;;:spp-table '( ("MOOSE" . "")
;;			  ("CONST" . "const") ) )

(if (file-exists-p "/home/sjw/wget/Makefile")
(ede-cpp-root-project "wget" :file "/home/sjw/wget/Makefile"
					  :include-path '( 
									   
"/build-aux/snippet/"
"/lib/"
"/lib/arpa/"
"/lib/glthread/"
"/lib/sys/"
"/msdos/"
"/src/"
)
:system-include-path '( "/usr/include/" "/usr/lib/gcc/x86_64-linux-gnu/4.6/include/" "/usr/local/include/" "/usr/lib/gcc/x86_64-linux-gnu/4.6/include-fixed/" "/usr/include/x86_64-linux-gnu/" "/usr/include/c++/4.6/" "/usr/include/c++/4.6/x86_64-linux-gnu/" "/usr/include/c++/4.6/backward/" "/usr/lib/syslinux/com32/include/")
					  )
)
