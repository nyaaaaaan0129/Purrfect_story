// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require popper
//= require bootstrap
//= require summernote/summernote-bs4.min
//= require summernote-init
//= require activestorage
//= require turbolinks
//= require_tree .

$(document).ready(function () {
  $("#theTarget").skippr({
      transition : 'slide',
      // 変化に係る時間(ミリ秒)
      speed : 1000,
      // easingの種類
      easing : 'easeOutQuart',
      // ナビゲーションの形("block" or "bubble")
      navType : 'block',
      // 子要素の種類("div" or "img")
      childrenElementType : 'div',
      // ナビゲーション矢印の表示(trueで表示)
      arrows : true,
      // スライドショーの自動再生(falseで自動再生なし)
      autoPlay : true,
      // 自動再生時のスライド切替間隔(ミリ秒)
      autoPlayDuration : 3000,
      // キーボードの矢印キーによるスライド送りの設定(trueで有効)
      keyboardOnAlways : true,
      // 一枚目のスライド表示時に戻る矢印を表示するかどうか(falseで非表示)
      hidePrevious : false
  });
});


  $(function() {
  $('#back a').on('click',function(event){
    $('body, html').animate({
      scrollTop:0
    }, 800);
    event.preventDefault();
  });
});



$(function() {
  var h = $(window).height();
  
  $('#wrap').css('display','none');
  $('#loader-bg ,#loader').height(h).css('display','block');
});
  
$(window).load(function () { 
  $('#loader-bg').delay(1800).fadeOut(1600);
  $('#loader').delay(1200).fadeOut(600);
  $('#wrap').css('display', 'block');
});


 $(function(){
    $('#post_image').on('change', function (e) {
    var reader = new FileReader();
    reader.onload = function (e) {
        $("#index_image").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
});
});


 $(function(){
    $('#item_image').on('change', function (e) {
    var reader = new FileReader();
    reader.onload = function (e) {
        $("#index_image").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
});
});


$(function(){
    $('#member_image').on('change', function (e) {
    var reader = new FileReader();
    reader.onload = function (e) {
        $("#profile_image").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
});
});

$(function(){
  $("#comment_toggle").hide(); 
  $(document).on("click", "#comment_hyouji", function() {
    $("#comment_toggle").toggle(); 
  });
});