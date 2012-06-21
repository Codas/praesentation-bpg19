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
          fontWeight: 'bold'
          fontSize: '18px'
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
          fontWeight: 'bold'
          fontSize: '18px'
          fontFamily: 'Open Sans'
          color: "#ED561B"
      opposite: true
      min: 0
      max: 4
    }]
    tooltip:
      formatter: ->
        if (@.point.name) # the pie chart
          s = "#{@.point.name}: #{@.y} fruits"
        else
          s = "#{@.x}: #{@.y}"
    series: [{
      type: 'column'
      name: 'Geschätzte Zeit'
      data: [0, 58, 42, 58]
    }, {
      type: 'column'
      name: 'Tatsächliche Zeit'
      data: [96, 63.81, 39.75]
    }, {
      # type: 'spline'
      name: 'Velocity'
      yAxis: 1
      data: [3.43, 2.2, 1.89]
    }, {
      color: "#ED561B"
      dashStyle: "Dash"
      yAxis: 1
      data: [1.89, 2]
      showInLegend: false
      pointStart: 2
    }]
