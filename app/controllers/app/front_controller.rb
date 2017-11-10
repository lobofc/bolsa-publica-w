module App
  # FrontsController
  class FrontController < AppController
    layout 'layouts/templates/application'
    before_action :keppler_mailer
    require 'csv'
    require 'json'

    def custodia
    end

    def estadisticas
      @charts = Chart.all
      @indicators = Indicator.all
    end

    def chart_front
      @graph = Chart.find(params[:id])
      data = File.open("#{@graph.file.path}").read
      @result = CSV.parse(data)
      @datos = @result.shift
      render json: [{name: 'Precio Venta', data: @result.reverse}]
    end

    def mercadosecundario
    end

    def marcolegal
    end

    def persona
    end

    def aplicacion
    end

    def calculadora
    end

    def tarifas
    end

    def colocacion
    end

    def contacto
    end

    def ventajas
    end

    def emisor
    end

    def juridica
    end

    def quienessomos
    end

    def estructuracion
    end

    def index
      @indicators = Indicator.all
      @banners = Banner.last(3)
    end

    def colocacioninstrumentos
    end

    def atencion
    end

    def cssslider
    end

    private
    def keppler_mailer
      @message = KepplerContactUs::Message.new
    end

  end
end
