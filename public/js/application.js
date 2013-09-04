$(document).ready(function() {
  var player_1_count = 0;
  var player_2_count = 0;
  var time_start = new Date().getTime();
  $(document).bind('keyup', function(event) {
    var key = String.fromCharCode(event.keyCode);
    if (key === "Q") {
      player_1_count++;
      var position = $("#player1_strip .active");
      position.removeClass("active");
      position.next().addClass("active");
    } else if (key === "P") {
      player_2_count++;
      var position = $("#player2_strip .active");
      position.removeClass("active");
      position.next().addClass("active");
    }
    if (player_1_count === 18) {
      $(document).unbind('keyup')
      var time_end = new Date().getTime();
      var diff = time_end - time_start;
      $("#player_1_win").show();
      $("#options").show();
      $("#options #dur").attr("value", diff);
      $("#options #win").attr("value", "player_1");
    } else if (player_2_count === 18) {
      $(document).unbind('keyup')
      var time_end = new Date().getTime();
      var diff = time_end - time_start;
      $("#player_2_win").show();
      $("#options").show();
      $("#options #dur").attr("value", diff);
      $("#options #win").attr("value", "player_2");
    }
  });
});
