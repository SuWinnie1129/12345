var playlist = new Array(25);

document.getElementById('input').onchange = function(){
  var file = this.files[0];
  var reader = new FileReader();
  reader.onload = function(progressEvent){
    // Entire file
    console.log(this.result);
    // By lines
    playlist = this.result.split('\n');
    for(var line = 0; line < playlist.length; line++){
      console.log(playlist[line]);
    }
  };
  reader.readAsText(file);
};