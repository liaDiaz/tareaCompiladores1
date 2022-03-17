grammar Expr;           
prog:   (expr NEWLINE)* ;
expr:   expr op=ADD expr   # add
    |   expr op=SUB expr   # sub
    |   expr op=MULT expr  # mult
    |   expr op=DIV expr   # div
    |   INT             # int
    |   '(' expr ')'    # parens
    ;

MULT: '*';
DIV: '/';
ADD: '+';
SUB: '-';
NEWLINE : [\r\n]+ ;
INT     : [0-9]+ ;