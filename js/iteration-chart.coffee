$ ->
  chart = new Highcharts.Chart
    chart:
      renderTo: 'iteration-chart-container'
    title:
      text: 'Aufwand pro Iteration'
    xAxis:
      categories: ['Iteration 1', 'Iteration 2', 'Iteration 3', 'Iteration 4']
      tickColor: ''
    yAxis: [{
      labels:
        style:
          font: '13px "Open Sans"'
      title:
        text: "Stunden"
        style:
          # color: '#333',
          fontWeight: 'bold',
          fontSize: '18px',
          fontFamily: 'Open Sans'
    }, {
      labels:
        style:
          font: '13px "Open Sans"'
          color: "#ED561B"
      title:
        text: "Velocity"
        style:
          # color: '#333',
          fontWeight: 'bold',
          fontSize: '18px',
          fontFamily: 'Open Sans'
          color: "#ED561B"
      opposite: true
    }]
    tooltip:
      formatter: ->
        if (@.point.name) # the pie chart
          s = "#{@.point.name}: #{@.y} fruits"
        else
          s = "#{@.x}: #{@.y}"
    labels:
      items: [{
        html: 'Total fruit consumption'
        style:
          left: '40px'
          top: '8px'
          color: 'black'
      }]
    series: [{
      type: 'column'
      name: 'Geschätzte Zeit'
      data: [0, 58, 42, 58]
    }, {
      type: 'column'
      name: 'Tatsächliche Zeit'
      data: [96, 63.81, 39.75]
    }, {
      type: 'spline'
      name: 'Velocity'
      yAxis: 1
      data: [3.43, 2.2, 1.89]
    }, {
      type: 'pie'
      name: 'Total consumption'
      data: [{
        name: 'Jane'
        y: 13
        color: '#4572A7' # Jane's color
      }, {
        name: 'John',
        y: 23,
        color: '#AA4643' # John's color
      }, {
        name: 'Joe',
        y: 19,
        color: '#89A54E' # Joe's color
      }]
      center: [100, 80]
      size: 100
      showInLegend: false
      dataLabels:
        enabled: false
    }]
