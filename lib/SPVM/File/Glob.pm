package SPVM::File::Glob;

our $VERSION = "0.025";

1;

=head1 Name

SPVM::File::Glob - BSD glob

=head1 Description

File::Glob class in L<SPVM> provides BSD glob function.

=head1 Usage

  use File::Glob;
  
  my $files = File::Glob->bsd_glob("path/*");
  
  my $files = File::Glob->bsd_glob("path/?oo");

=head1 Class Methods

C<static method bsd_glob : string[] ($pattern : string);>

Same as L<Sys::IO#bsd_glob|SPVM::Sys::IO/"bsd_glob"> method.

Please use L<Sys#glob|SPVM::Sys/"glob"> method, which provides the same functionality.

=head1 Repository

L<SPVM::File::Glob - Github|https://github.com/yuki-kimoto/SPVM-File-Glob>

=head1 Author

Yuki Kimoto C<kimoto.yuki@gmail.com>

=head1 Copyright & License

Copyright (c) 2023 Yuki Kimoto

MIT License
