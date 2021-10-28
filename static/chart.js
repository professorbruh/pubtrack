new Chart(document.getElementById("line-chart"), {
  type: 'line',
  data: {
    labels: [2011,2012,2013,2014,2015,2016,2017,2018,2019,2020],
    datasets: [{
        data: [222,54,36,106,107,211,333,221,783,478],
        label: "machine Learning",
        borderColor: "#3e95cd",
        fill: false
      }, {
        data: [282,350,411,502,635,809,447,402,700,267],
        label: "Cryptography",
        borderColor: "#8e5ea2",
        fill: false
      }, {
        data: [168,170,178,190,203,276,408,547,675,734],
        label: "Data Science",
        borderColor: "#3cba9f",
        fill: false
      }, {
        data: [40,20,10,16,24,38,74,167,508,784],
        label: "Deep Learning",
        borderColor: "#e8c3b9",
        fill: false
      }, {
        data: [69,38,282,672,557,226,182,172,312,433],
        label: "Parallel Computing",
        borderColor: "#c45850",
        fill: false
      }
    ]
  },
  options: {
    title: {
      display: true,
    }
  }
});
