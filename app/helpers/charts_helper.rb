module ChartsHelper
  def un_chart(chart)
    graph = Chart.find(chart)
    line_chart un_chart_path, download: true, stacked: true, library: {
        title: {text: "#{graph.name}", x: -20},
        yAxis: {
            title: {
                text: 'Sporters count'
            }
        },
        xAxis: {
            title: {
                text: 'Country'
            }
        },
        navigator: {
            enabled: true
        }
    }
  end
end
