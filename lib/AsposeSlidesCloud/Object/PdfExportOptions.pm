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

package AsposeSlidesCloud::Object::PdfExportOptions;

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
#Provides options that control how a presentation is saved in Pdf format.
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
	$self->{ format } = 'pdf';
	
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



__PACKAGE__->class_documentation({description => 'Provides options that control how a presentation is saved in Pdf format.',
                                  class => 'PdfExportOptions',
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
    'text_compression' => {
    	datatype => 'string',
    	base_name => 'TextCompression',
    	description => 'Specifies compression type to be used for all textual content in the document.',
    	format => '',
    	read_only => '',
    		},
    'embed_full_fonts' => {
    	datatype => 'boolean',
    	base_name => 'EmbedFullFonts',
    	description => 'Determines if all characters of font should be embedded or only used subset.',
    	format => '',
    	read_only => '',
    		},
    'compliance' => {
    	datatype => 'string',
    	base_name => 'Compliance',
    	description => 'Desired conformance level for generated PDF document.',
    	format => '',
    	read_only => '',
    		},
    'sufficient_resolution' => {
    	datatype => 'double',
    	base_name => 'SufficientResolution',
    	description => 'Returns or sets a value determining resolution of images inside PDF document.  Property affects on file size, time of export and image quality. The default value is 96.',
    	format => '',
    	read_only => '',
    		},
    'jpeg_quality' => {
    	datatype => 'int',
    	base_name => 'JpegQuality',
    	description => 'Returns or sets a value determining the quality of the JPEG images inside PDF document.',
    	format => '',
    	read_only => '',
    		},
    'draw_slides_frame' => {
    	datatype => 'boolean',
    	base_name => 'DrawSlidesFrame',
    	description => 'True to draw black frame around each slide.',
    	format => '',
    	read_only => '',
    		},
    'show_hidden_slides' => {
    	datatype => 'boolean',
    	base_name => 'ShowHiddenSlides',
    	description => 'Specifies whether the generated document should include hidden slides or not. Default is false. ',
    	format => '',
    	read_only => '',
    		},
    'save_metafiles_as_png' => {
    	datatype => 'boolean',
    	base_name => 'SaveMetafilesAsPng',
    	description => 'True to convert all metafiles used in a presentation to the PNG images.',
    	format => '',
    	read_only => '',
    		},
    'password' => {
    	datatype => 'string',
    	base_name => 'Password',
    	description => 'Setting user password to protect the PDF document. ',
    	format => '',
    	read_only => '',
    		},
    'embed_true_type_fonts_for_ascii' => {
    	datatype => 'boolean',
    	base_name => 'EmbedTrueTypeFontsForASCII',
    	description => 'Determines if Aspose.Slides will embed common fonts for ASCII (33..127 code range) text. Fonts for character codes greater than 127 are always embedded. Common fonts list includes PDF&#39;s base 14 fonts and additional user specified fonts.',
    	format => '',
    	read_only => '',
    		},
    'additional_common_font_families' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'AdditionalCommonFontFamilies',
    	description => 'Returns or sets an array of user-defined names of font families which Aspose.Slides should consider common.',
    	format => '',
    	read_only => '',
    		},
    'notes_position' => {
    	datatype => 'string',
    	base_name => 'NotesPosition',
    	description => 'Gets or sets the position of the notes on the page.',
    	format => '',
    	read_only => '',
    		},
    'comments_position' => {
    	datatype => 'string',
    	base_name => 'CommentsPosition',
    	description => 'Gets or sets the position of the comments on the page.',
    	format => '',
    	read_only => '',
    		},
    'comments_area_width' => {
    	datatype => 'int',
    	base_name => 'CommentsAreaWidth',
    	description => 'Gets or sets the width of the comment output area in pixels (Applies only if comments are displayed on the right).',
    	format => '',
    	read_only => '',
    		},
    'comments_area_color' => {
    	datatype => 'string',
    	base_name => 'CommentsAreaColor',
    	description => 'Gets or sets the color of comments area (Applies only if comments are displayed on the right).',
    	format => '',
    	read_only => '',
    		},
    'show_comments_by_no_author' => {
    	datatype => 'boolean',
    	base_name => 'ShowCommentsByNoAuthor',
    	description => 'True if comments that have no author are displayed. (Applies only if comments are displayed).',
    	format => '',
    	read_only => '',
    		},
    'image_transparent_color' => {
    	datatype => 'string',
    	base_name => 'ImageTransparentColor',
    	description => 'Image transparent color.',
    	format => '',
    	read_only => '',
    		},
    'apply_image_transparent' => {
    	datatype => 'boolean',
    	base_name => 'ApplyImageTransparent',
    	description => 'True to apply specified ImageTransparentColor  to an image.',
    	format => '',
    	read_only => '',
    		},
    'access_permissions' => {
    	datatype => 'string',
    	base_name => 'AccessPermissions',
    	description => 'Access permissions that should be granted when the document is opened with user access.  Default is AccessPermissions.None.             ',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'default_regular_font' => 'string',
    'format' => 'string',
    'text_compression' => 'string',
    'embed_full_fonts' => 'boolean',
    'compliance' => 'string',
    'sufficient_resolution' => 'double',
    'jpeg_quality' => 'int',
    'draw_slides_frame' => 'boolean',
    'show_hidden_slides' => 'boolean',
    'save_metafiles_as_png' => 'boolean',
    'password' => 'string',
    'embed_true_type_fonts_for_ascii' => 'boolean',
    'additional_common_font_families' => 'ARRAY[string]',
    'notes_position' => 'string',
    'comments_position' => 'string',
    'comments_area_width' => 'int',
    'comments_area_color' => 'string',
    'show_comments_by_no_author' => 'boolean',
    'image_transparent_color' => 'string',
    'apply_image_transparent' => 'boolean',
    'access_permissions' => 'string'
} );

__PACKAGE__->attribute_map( {
    'default_regular_font' => 'DefaultRegularFont',
    'format' => 'Format',
    'text_compression' => 'TextCompression',
    'embed_full_fonts' => 'EmbedFullFonts',
    'compliance' => 'Compliance',
    'sufficient_resolution' => 'SufficientResolution',
    'jpeg_quality' => 'JpegQuality',
    'draw_slides_frame' => 'DrawSlidesFrame',
    'show_hidden_slides' => 'ShowHiddenSlides',
    'save_metafiles_as_png' => 'SaveMetafilesAsPng',
    'password' => 'Password',
    'embed_true_type_fonts_for_ascii' => 'EmbedTrueTypeFontsForASCII',
    'additional_common_font_families' => 'AdditionalCommonFontFamilies',
    'notes_position' => 'NotesPosition',
    'comments_position' => 'CommentsPosition',
    'comments_area_width' => 'CommentsAreaWidth',
    'comments_area_color' => 'CommentsAreaColor',
    'show_comments_by_no_author' => 'ShowCommentsByNoAuthor',
    'image_transparent_color' => 'ImageTransparentColor',
    'apply_image_transparent' => 'ApplyImageTransparent',
    'access_permissions' => 'AccessPermissions'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
