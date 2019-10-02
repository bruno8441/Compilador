lexer grammar DecafLexer;

@header {
package decaf;
}

options
{
  language=Java;
}

tokens
{
  TK_class
}

LCURLY : '{';
RCURLY : '}';

WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

RESERVADA: 'if';
CHARLITERAL: CHAR | BACKSLASH;
INTLITERAL	: INT+ | HEXADECIMAL;
STRING : '"' C+  '"';
ID : I+ | I+ INT+; 
MENOS: '-';

fragment CHAR : '\'' C '\''; 
fragment BACKSLASH: '\'' ('\\'B  | '\\\\' | '\\"' ) '\'';
fragment ESC :  '\\' ('n'|'"');
fragment INT: [0-9]; 
fragment C: [a-zA-Z] | INT | '\\n'; 
fragment B: [nt]; 
fragment HEXADECIMAL: '0x'H+;
fragment H: INT+ | [a-fA-F];
fragment I: [a-zA-z_]+; 

