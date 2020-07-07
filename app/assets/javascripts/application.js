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
      // スライドショーの変化 ("fade" or "slide")
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
  var h = $(window).height();
  
  $('#wrap').css('display','none');
  $('#loader-bg ,#loader').height(h).css('display','block');
});
  
$(window).load(function () { //全ての読み込みが完了したら実行
  $('#loader-bg').delay(1800).fadeOut(1600);
  $('#loader').delay(1200).fadeOut(600);
  $('#wrap').css('display', 'block');
});
  
//10秒たったら強制的にロード画面を非表示
$(function(){
  setTimeout('stopload()',10000);
});
  
function stopload(){
  $('#wrap').css('display','block');
  $('#loader-bg').delay(900).fadeOut(800);
  $('#loader').delay(600).fadeOut(300);
}

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
 
  // 画面読込時に実行する。
  $("#comment_toggle").hide(); // 初期表示で隠しておく

  // 指定ボタンを押下すると処理を開始する
  $("#comment_hyouji").on("click", function() {
    $("#comment_toggle").toggle(); // div領域を表示
  });
});