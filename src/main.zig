const std = @import( "std" );

const TokenKind = enum
{
  IntLiteral, // Int
  Identifier, // String

  // Types & Builtins

  Ampersand, // &
  Dollar,    // $
  Hash,      // #
  At,        // @

  // Special Symbols

  Plus,      // +
  Minus,     // -
  Star,      // *
  Slash,     // /
  Percent,   // %

  Compare,   // =
  More,      // >
  Less,      // <
  Interog,   // !
  Question,  // ?

  // Scopes

  LBracket,  // [
  RBracket,  // ]

  LBrace,    // {
  RBrace,    // }

  LParen,    // (
  RParen,    // )

  // Assignment & Bindings

  Colon,     // :
  Pipe,      // |
  Arrow,     // =>

  // Delimiters

  Quote1,    // '
  Quote2,    // "

  Comma,     // ,
  SemiColon, // ;

  EoL,       // End of Line ( \n )
  Eof,       // End of File
};

const Span = struct
{
  start  : usize,
  end    : usize,
  line   : u32,
  column : u32,
};

const Token = struct
{
  line : []const u8, // slice into source buffer
  span : Span,       // token start & end positions in line slice
  kind : TokenKind,  // what are we looking at
  cont : bool,       // is there a whitespace / delimiter preceding
};


const TokenList = std.ArrayList( Token );


pub fn loadFile( allocator: std.mem.Allocator, path: []const u8 ) ![]const u8
{

}

pub fn main() void
{

}


pub fn lexerPass( lineSlice : []const u8 ) TokenList
{

}