/**
 * Grid theme for Highcharts JS
 * @author Torstein Hønsi
 */

Highcharts.theme = {
	colors: ['#058DC7', '#50B432', '#ED561B', '#DDDF00', '#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4'],
	chart: {
		backgroundColor: 'rgba(255, 255, 255, 0.2)',
    // borderWidth: 2,
		// plotBackgroundColor: 'rgba(255, 255, 255, .9)',
		plotShadow: true,
		plotBorderWidth: 0
	},
	title: {
		style: {
			color: '#000',
			font: 'bold 20px "Open Sans"',
      textTransform: 'uppercase'
		}
	},
	subtitle: {
		style: {
			color: '#666666',
			font: 'bold 12px "Open Sans"'
		}
	},
	xAxis: {
		lineColor: '#000',
		tickColor: '#000',
		labels: {
			style: {
				color: '#000',
				font: '13px "Open Sans"'
			}
		},
		title: {
			style: {
				color: '#333',
				fontWeight: 'bold',
				fontSize: '14px',
				fontFamily: 'Open Sans'

			}
		}
	},
	yAxis: {
    gridLineWidth: 1,
    gridLineColor: '#888',
		lineColor: '#000',
		lineWidth: 1,
		tickWidth: 1,
		tickColor: '#000',
		labels: {
			style: {
				color: '#000',
				font: '13px "Open Sans"'
			}
		},
		title: {
			style: {
				color: '#333',
				fontWeight: 'bold',
				fontSize: '16px',
				fontFamily: 'Open Sans'
			}
		}
	},
	legend: {
		itemStyle: {
			font: '13px "Open Sans"',
      lineHeight: '200%',
			color: 'black'

		},
		itemHoverStyle: {
			color: '#039'
		},
		itemHiddenStyle: {
			color: 'gray'
		}
	},
	labels: {
		style: {
			color: '#99b'
		}
	}
};

// Apply the theme
var highchartsOptions = Highcharts.setOptions(Highcharts.theme);

