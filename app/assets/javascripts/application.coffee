##= require jquery
##= require jquery_ujs
##= require_tree .
$ ->
  $('a[href^=http]:not([rel=internal])').attr('target', '_blank');
