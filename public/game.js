let timer;
let points = 0;

window.onload = function() {
  // Check if we are in the game page
  if (window.location.pathname === '/game') {
    // Start the timer
    const duration = 5; // seconds
    startTimer(duration, document.querySelector('#timer'));

    // Start the point calculator
    startPointCalculator();

    // event listener to morePoints button
    const morePointsBtn = document.querySelector('#morePoints');
    morePointsBtn.addEventListener('click', addMorePoints);

    // Redirect to end page after 1 minute
    setTimeout(function() {
      // Save the total points to local storage
      localStorage.setItem('totalPoints', points);
      
      window.location.href = '/end';
    }, duration * 1000);
  }
}

function startTimer(duration, display) {
  var timer = duration, minutes, seconds;
  setInterval(function () {
    minutes = parseInt(timer / 60, 10);
    seconds = parseInt(timer % 60, 10);

    minutes = minutes < 10 ? "0" + minutes : minutes;
    seconds = seconds < 10 ? "0" + seconds : seconds;

    display.textContent = minutes + ":" + seconds;

    if (--timer < 0) {
      timer = duration;
    }
  }, 1000);
}

function startPointCalculator() {
  // Start adding 10 points every second
  pointInterval = setInterval(() => {
    points += 10;
    updatePoints();
  }, 1000);
}

function stopPointCalculator() {
  // Stop adding points
  clearInterval(pointInterval);
}

function addMorePoints() {
  // Add 50 points
  points += 50;
  updatePoints();
}

function updatePoints() {
  document.querySelector('#points').textContent = 'Points: ' + points;
}

