grammar marzo;

program : statement+;

expression: 
    expression '+' expression       #suma
    | expression '-' expression     #resta
    | '(' expression ')'            #parens
    | Numero                        #primaria
    | Variable                      #var
    ;

statement:
    'int' Variable                  #declaracion
    | Variable '=' expression       #asignacion
    | 'print' '(' expression ')'    #printint
    ;
comparacion:
     expression '!=' expression      #comparacion
    ;

condicional:
     'if' expression 'then' statement 'else' statement #if 
    ;

// A continuación los tokens (comienzan con mayúscula)
Numero : [0-9]+;
Variable : [a-z]+;
WS : [ \t\n\r]+ -> skip ;


