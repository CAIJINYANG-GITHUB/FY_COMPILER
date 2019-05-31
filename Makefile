compiler : Fy_Ast.cpp Fy_Tools.cpp Fy_Parser.cpp Fy_InterCode.cpp Fy_Optimize.cpp lex.yy.c Fy_Bison.tab.c
	g++ -std=c++11 Fy_Ast.cpp Fy_Tools.cpp Fy_Parser.cpp Fy_InterCode.cpp Fy_Optimize.cpp lex.yy.c Fy_Bison.tab.c -o compiler
Fy_Bison.tab.c : Fy_Bison/Fy_Bison.y
	bison Fy_Bison/Fy_Bison.y
	cp Fy_Bison/Fy_Bison.tab.c ./Fy_Bison.tab.c
lex.yy.c : Fy_Flex/Fy_Flex.l
	flex Fy_Flex/Fy_Flex.l
	cp Fy_Flex/lex.yy.c ./lex.yy.c
clean:
	rm Fy_Bison.tab.c lex.yy.c
