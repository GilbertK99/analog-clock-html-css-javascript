let hour = document.getElementById("hour");
let minute = document.getElementById("minute");
let seconds = document.getElementById("seconds");


setInterval(() => {
    const timeNow = new Date();
    const hr = timeNow.getHours(),
        min = timeNow.getMinutes(); 
        sec = timeNow.getSeconds()
    const hrCal = hr * 30,
    minCal = min * 6;
    secCal = sec * 6;
    hour.style.transform = `rotate(${hrCal}deg)`;
    minute.style.transform = `rotate(${minCal}deg)`;
    seconds.style.transform = `rotate(${secCal}deg)`;
}, 1000)