$(function(){$("a[href^=#]").click(function(){var e=$(this).attr("href"),t=$(e).offset().top;return $("html:not(:animated),body:not(:animated)").animate({scrollTop:t-0},700),!1})});