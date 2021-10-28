new Chart(document.getElementById("doughnut-chart"), {
    type: 'doughnut',
    data: {
      labels: ["Machine Learning", "Cryptography", "Data Science", "Deep Learning", "Parallel Computing"],
      datasets: [
        {
          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
          data: [248,527,734,784,433]
        }
      ]
    },
    options: {
      title: {
        display: true,
      }
    }
});
