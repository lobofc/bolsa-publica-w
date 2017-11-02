module ChartsHelper
  def un_chart(chart)
    graph = Chart.find(chart)
    line_chart un_chart_path, library: {
        title: {text: "#{graph.name}", x: -20},
        yAxis: {
            title: {
                text: 'Datos'
            }
        },
        xAxis: {
            type: 'datetime',
            title: {
                text: 'Datos'
            }
        },
        navigator: {
            enabled: true,
            adaptToUpdatedData: false,
            series: {
                data: "Hola"
            }
        },
    }
  end
end
