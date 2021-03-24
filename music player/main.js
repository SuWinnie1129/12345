//element
const play_btn = document.getElementById("play_btn");
const pause_btn = document.getElementById("pause_btn");
const next_btn = document.getElementById("next_btn");
const audio = document.getElementById("audio");
const progress = document.getElementById("timeline_progress");
const progressContainer = document.getElementById("timeline_container");
const cur_time = document.getElementById("cur_time");
const slider = document.getElementById("myRange");
const output = document.getElementById("output");

//to do
pause_btn.style.display = "none";
var playlist = new Array(25);
var scores = new Array(25);
let i = 0;

//read file
document.getElementById('input').onchange = function(){
  var file = this.files[0];
  var reader = new FileReader();
  reader.onload = function(progressEvent){
    // Entire file
    console.log(this.result);
    // By lines
    playlist = this.result.split('\n');
    load_song(playlist[0]);
  };
  reader.readAsText(file);
  //hide input
  document.getElementById('container_file').style.display = "none";
};

//load_song(index);
function load_song(song){
  audio.src = `./playlist/${song}.mp3`;
}

//time update
audio.addEventListener('timeupdate', updateProgress);

function updateProgress(e){
  const { duration, currentTime} = e.srcElement;
  //progress bar
  //at least 1 minute
  if(currentTime < 60){
    next_btn.disabled = true;
    next_btn.style.cursor = "not-allowed";
  }
  else{
    next_btn.disabled = false; 
    next_btn.style.cursor = "pointer";
  }
  //current time show
  let min = parseInt(currentTime / 60);
  let sec = parseInt(currentTime % 60); 
  if(sec < 10){
    cur_time.innerHTML = " " + min + ":0" + sec;
  }
  else{
    cur_time.innerHTML = " " + min + ":" +sec;
  }
  
  const progressPercent = (currentTime / duration) * 100;
  progress.style.width = `${progressPercent}%`;
}

//progress bar click
progressContainer.addEventListener('click', setProgress)

function setProgress(e) {
  const width = this.clientWidth
  const clickX = e.offsetX
  const duration = audio.duration
  audio.currentTime = (clickX / width) * duration
}

//play & pause
play_btn.addEventListener('click', play_click);
pause_btn.addEventListener('click', pause_click);

function play_click(){
  play_btn.style.display = "none";
  pause_btn.style.display = "";
  audio.play();
}
function pause_click(){
  play_btn.style.display = "";
  pause_btn.style.display = "none";
  audio.pause();
}

//next
next_btn.addEventListener('click', next_click);

function next_click(){
  //range slider score into array
  scores[i] = slider.value;
  //change to next song
  i++;
  if(i === 25){
    next_btn.disabled = true;
    exp_finish();
  }
  else{
    load_song(playlist[i]);
    play_click();
  }
}

//finish 25 songs
function exp_finish(){
  console.log(this.scores);
  //寫檔
  let csv_Content = "data:text/csv;charset=utf-8,";
  scores.forEach(function(score){
    csv_Content += score + "\r\n";
  });
  var encodeUri = encodeURI(csv_Content);
  var link = document.createElement("a");
  link.setAttribute("href", encodeUri);
  link.setAttribute("download", "result.csv");
  document.body.appendChild(link);
  link.click();
}

//range slider
output.innerHTML = slider.value;
slider.oninput = function() {
  output.innerHTML = this.value;
}
