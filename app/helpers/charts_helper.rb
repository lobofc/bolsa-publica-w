module ChartsHelper
  def un_chart(chart)
    graph = Chart.find(chart)
    line_chart un_chart_path, width: "930px", height: "600px", colors: ["#f45b5b", "#90ee7e"], library: {
        # chart: {
        #     type: 'spline'
        # },
        title: {
            text: "#{graph.name}"
        },
        # subtitle: {
        #     text: 'Irregular time data in Highcharts JS'
        # },
        navigator: {
            enabled: true,
            backgroundColor: "#90ee7e"
        },
        xAxis: {
            type: 'datetime',
            dateTimeLabelFormats: {
                month: '%e. %b',
                year: '%b'
            },
            title: {
                text: 'Fechas'
            }
        },
        yAxis: {
            title: {
                text: 'Bolsa'
            }
        }
        # tooltip: {
        #     headerFormat: '<b>{series.name}</b><br>',
        #     pointFormat: '{point.x:%e. %b}: {point.y:.2f} m'
        # },
        #
        # plotOptions: {
        #     line: {
        #         marker: {
        #             enabled: true
        #         }
        #     }
        # },

        # series: [{
        #     name: 'Winter 2007-2008',
        #
        #     data: un_chart_path
        # }]
    }
  end
end
