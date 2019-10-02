parser grammar DecafParser;

@header {
package decaf;
}

options
{
  language=Java;
  tokenVocab=DecafLexer;
}

program: TK_class ID LCURLY RCURLY EOF;

if: IF LP expr RP block ELSE block; 
expr: expr op expr | ID; 
op: OPERADOR; 
block: LBRACKET literal RBRACKET; 
literal: INTLITERAL;
