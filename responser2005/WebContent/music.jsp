<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	@import url(https://fonts.googleapis.com/css?family=Roboto:400,300)
@import url(https://cdn.materialdesignicons.com/1.3.41/css/materialdesignicons.min.css)

$speed: 0.5

.wrap
  margin: 0 auto
  width: 500px
  color: white
  text-align: center
  text-shadow: 1px 1px 5px rgba(0,0,0,.3)

body, html 
  padding: 0
  margin: 0
  background: #455A64
  box-sizing: border-box
  font-family: 'Roboto', sans-serif
  padding-bottom: -50px
  color: black

  *, *:before, *:after
    box-sizing: inherit
    transition: all .5s ease
  
  a
    text-decoration: none
    color: white
    border-bottom: 1px dashed rgba(255,255,255,.5)
    &:hover
      text-shadow: 1px 1px 5px #000000
    
  .player
    margin-top: 50px
    width: 500px
    height: 75px
    background: white
    border-bottom: 4px #ccc solid
    position: relative
    color: black
    text-align: left
    text-shadow: none
    
    .album-art
      position: absolute
      left: 0
      width: 15%
      height: 100%
      box-shadow: 3px 0 3px 0 rgba(0,0,0,.4)
      padding: 5px
      .cover
        width: 100%
        height: 100%
        box-shadow: 0 0 3px 2px rgba(0,0,0,0.25)
        background: url('https://upload.wikimedia.org/wikipedia/en/6/67/Foo_Fighters_8LP_Sonic_Highways.jpg')
        background-size: cover
    .description
      position: relative
      width: 60%
      height: 50px
      top: 20%
      left: 20%
      overflow: hidden
      .title
        color: black
        font-size: 24px
        font-weight: 100
      .sub-title
        font-size: 13px
        font-weight: 100
        color: #999
      
    .play-button
      position: absolute
      width: 55px
      height: 55px
      right: 10%
      border-radius: 50%
      top: -25px
      background: white
      box-shadow: 0 3px 20px 0 rgba(0,0,0,0.35)
      text-align: center
      line-height: 57px
      font-size: 26px
      color: #D32F2F
      cursor: pointer
      .lp-background
        transition: all .35s ease
        background: url("http://i65.tinypic.com/v5wy3b.png")
        background-size: cover
        animation: spin 1s infinite linear
        width: 100%
        height: 100%
        z-index: 1
        position: absolute
      i
        z-index: 100
      .mdi-pause
        z-index: 100
        position: absolute
        right: 17.5px
        top: 17.4px
        color: white
        font-size: 20px
      &:hover
        box-shadow: 0 3px 20px 0 rgba(0,0,0,0.5)
      
    .time-indicator
      position: absolute
      right: 11%
      top: 60%
      font-size: 13px
      font-weight: 100
      i
        color: #D32F2F
    
    .progress-bar
      width: 100%
      top: 100%
      opacity: 0
      height: 0
      position: absolute
      cursor: pointer
      .runner
        height: 4px
        background: #F44336
      
    .visualizer
      position: absolute
      top: 25%
      left: 37.5%
      width: 0%
      height: 50%
      display: flex
      align-items: center
      overflow: hidden
      div
        width: 2px
        background: #F44336
        float: left
        height: 0%
        margin-right: 5px
        transition: all .1s ease
        
    &.paused
      border-bottom: none
      .visualizer
        opacity: 0
      .lp-background
        opacity: 0
      .play-button
        .mdi-pause
          opacity: 0
          
    &.playing
      .description
        opacity: 0
      .album-art
        width: 0px
        opacity: 0
      .visualizer
        left: 5%
        width: 65%
      .progress-bar
        height: 4px
        margin: 0
        opacity: 1
      .description
        left: 0%
        opacity: 0
      .play-button
        background: transparent
        .mdi-play
          opacity: 0
      
      
@keyframes spin
  0% 
    transform: rotate(0deg)
  100%
    transform: rotate(360deg)S
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
  <h1>Material music player</h1>
  <p>Inspired by <a href="https://dribbble.com/shots/2365362-A-or-B-Bottom-music-player-dashboard" target="_blank">Leo Leung</a> </p>
</div>

<div class="wrap">

  <div class="player paused">
  
    <div class="progress-bar">
      <div class="runner"></div>
    </div>
    <div class="album-art">
      <div class="cover"></div>
    </div>
    
    <div class="description">
      <div class="title">Something from nothing  </div>
      <div class="sub-title">by Foo Fighters, Sonic highways</div>
    </div>
    
    <div class="visualizer">
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
    </div>
      
    <div class="play-button">
      <div class="lp-background"></div>
      <i class="mdi mdi-play"></i>
      <i class="mdi mdi-pause"></i>
    </div>
    
    <div class="time-indicator">
      <i class="mdi mdi-clock"></i>
      <span class="time">03:39</span>
    </div>
    
    
  </div>
  
</div>
</body>


<script type="text/javascript">
var $visualizers = $('.visualizer>div');
var $progressBar = $('.progress-bar');
var $progressBarRunner = $progressBar.find('.runner');
var songLength = 219; //in seconds
var percentage = 0
var $time = $('.time');
var $player = $('.player');

var playRunner = null;

function go() {
  playRunner = setInterval(function() {
    //visualizers
    $visualizers.each(function() {
      $(this).css('height', Math.random() * 90 + 10 + '%');
    });
    //progress bar
    percentage += 0.15;
    if (percentage > 100) percentage = 0;
    $progressBarRunner.css('width', percentage + '%');

    $time.text(calculateTime(songLength, percentage));
  }, 250);
};

$('.play-button').on('click', function() {
  $player.toggleClass('paused').toggleClass('playing');
  if (playRunner) {
    clearInterval(playRunner);
    playRunner = null;
    $time.text(calculateTime(songLength, 100));
  } else {
    percentage = 0;
    go();
  }
});

$('.progress-bar').on('click', function(e) {
  var posY = $(this).offset().left;
  var clickY = e.pageX - posY;
  var width = $(this).width();

  percentage = clickY / width * 100;
});

function calculateTime(songLength, percentage) {
  //time
  var currentLength = songLength / 100 * percentage;
  var minutes = Math.floor(currentLength / 60);
  var seconds = Math.floor(currentLength - (minutes * 60));
  if (seconds <= 9) {
    return (minutes + ':0' + seconds);
  } else {
    return (minutes + ':' + seconds);
  }
}

clearInterval(playRunner);
</script>
</html>
