package Catalyst::Model::CRUST;

use strict;
use base qw( CRUST Catalyst::Model );


sub new {
    my ($self, $c) = @_;

    return $self->NEXT::new(%{$self->config});
}


1;

__END__

=head1 NAME

Catalyst::Model::CRUST - Catalyst model class for making REST queries using CRUST

=head1 SYNOPSIS

Create a controller using the helper:

  script/myapp_create.pl model CRUST CRUST

Or make your own:

  package MyAPP::Model::CRUST;
  
  use strict;
  use base 'Catalyst::Model::CRUST';
  
  # Optionally set a base or other CRUST options
  __PACKAGE__->config(
      base => 'http://something/'
  );
  
  1;


Then in your Catalyst app:

  $c->stash{result} = $c->model('CRUST')->get('http://something/foo');

=head1 SEE ALSO

L<CRUST>, L<Catalyst::Model>

=head1 AUTHOR

Chris Heschong E<lt>chris@wiw.orgE<gt>

=cut