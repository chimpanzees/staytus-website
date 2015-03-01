##= require jquery
##= require jquery_ujs
##= require_tree .
$ ->

  $('a[href^=http]:not([rel=internal])').attr('target', '_blank').on 'click', ->
    url = $(this).attr("href")
    ga 'send', 'event', 'outbound', 'click', url
