document.addEventListener("DOMContentLoaded", function () {
  function updateTime() {
    const now = new Date();
    const hours = now.getHours();
    const minutes = now.getMinutes();
    const seconds = now.getSeconds();
    const timeString = `${hours.toString().padStart(2, "0")}:${minutes
      .toString()
      .padStart(2, "0")}:${seconds.toString().padStart(2, "0")}`;
    document.getElementById("timeDisplay").textContent = timeString;
  }

  updateTime();
  setInterval(updateTime, 1000); // 1000 milliseconds = 1 second
});
