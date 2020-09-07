=begin comment

Copyright (c) 2019 Aspose Pty Ltd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

=end comment

=cut

package AsposeSlidesCloud::Object::SvgExportOptions;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use AsposeSlidesCloud::Object::ExportOptions;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#Provides options that control how a presentation is saved in SVG format.
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

=begin comment

Copyright (c) 2019 Aspose Pty Ltd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

=end comment

=cut
#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	$self->{ format } = 'svg';
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize(lcfirst($_subclass), $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } elsif (exists $hash->{lcfirst($_json_attribute)}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{lcfirst($_json_attribute)});
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "AsposeSlidesCloud::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => 'Provides options that control how a presentation is saved in SVG format.',
                                  class => 'SvgExportOptions',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'default_regular_font' => {
    	datatype => 'string',
    	base_name => 'DefaultRegularFont',
    	description => 'Setting user password to protect the PDF document. ',
    	format => '',
    	read_only => '',
    		},
    'format' => {
    	datatype => 'string',
    	base_name => 'Format',
    	description => 'Export format.',
    	format => '',
    	read_only => '',
    		},
    'vectorize_text' => {
    	datatype => 'boolean',
    	base_name => 'VectorizeText',
    	description => 'Determines whether the text on a slide will be saved as graphics.',
    	format => '',
    	read_only => '',
    		},
    'metafile_rasterization_dpi' => {
    	datatype => 'int',
    	base_name => 'MetafileRasterizationDpi',
    	description => 'Returns or sets the lower resolution limit for metafile rasterization.',
    	format => '',
    	read_only => '',
    		},
    'disable3_d_text' => {
    	datatype => 'boolean',
    	base_name => 'Disable3DText',
    	description => 'Determines whether the 3D text is disabled in SVG.',
    	format => '',
    	read_only => '',
    		},
    'disable_gradient_split' => {
    	datatype => 'boolean',
    	base_name => 'DisableGradientSplit',
    	description => 'Disables splitting FromCornerX and FromCenter gradients.',
    	format => '',
    	read_only => '',
    		},
    'disable_line_end_cropping' => {
    	datatype => 'boolean',
    	base_name => 'DisableLineEndCropping',
    	description => 'SVG 1.1 lacks ability to define insets for markers. Aspose.Slides SVG writing engine has workaround for that problem: it crops end of line with arrow, so, line doesn&#39;t overlap markers. This option switches off such behavior.',
    	format => '',
    	read_only => '',
    		},
    'jpeg_quality' => {
    	datatype => 'int',
    	base_name => 'JpegQuality',
    	description => 'Determines JPEG encoding quality.',
    	format => '',
    	read_only => '',
    		},
    'pictures_compression' => {
    	datatype => 'string',
    	base_name => 'PicturesCompression',
    	description => 'Represents the pictures compression level',
    	format => '',
    	read_only => '',
    		},
    'delete_pictures_cropped_areas' => {
    	datatype => 'boolean',
    	base_name => 'DeletePicturesCroppedAreas',
    	description => 'A boolean flag indicates if the cropped parts remain as part of the document. If true the cropped  parts will removed, if false they will be serialized in the document (which can possible lead to a  larger file)',
    	format => '',
    	read_only => '',
    		},
    'external_fonts_handling' => {
    	datatype => 'string',
    	base_name => 'ExternalFontsHandling',
    	description => 'Determines a way of handling externally loaded fonts.',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'default_regular_font' => 'string',
    'format' => 'string',
    'vectorize_text' => 'boolean',
    'metafile_rasterization_dpi' => 'int',
    'disable3_d_text' => 'boolean',
    'disable_gradient_split' => 'boolean',
    'disable_line_end_cropping' => 'boolean',
    'jpeg_quality' => 'int',
    'pictures_compression' => 'string',
    'delete_pictures_cropped_areas' => 'boolean',
    'external_fonts_handling' => 'string'
} );

__PACKAGE__->attribute_map( {
    'default_regular_font' => 'DefaultRegularFont',
    'format' => 'Format',
    'vectorize_text' => 'VectorizeText',
    'metafile_rasterization_dpi' => 'MetafileRasterizationDpi',
    'disable3_d_text' => 'Disable3DText',
    'disable_gradient_split' => 'DisableGradientSplit',
    'disable_line_end_cropping' => 'DisableLineEndCropping',
    'jpeg_quality' => 'JpegQuality',
    'pictures_compression' => 'PicturesCompression',
    'delete_pictures_cropped_areas' => 'DeletePicturesCroppedAreas',
    'external_fonts_handling' => 'ExternalFontsHandling'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
