module App
  # FrontsController
  class FrontController < AppController
    layout 'layouts/templates/application'
    before_action :keppler_mailer

    def custodia
    end

    def estadisticas
      @indicators = Indicator.all
      @banners = Banner.all.last
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
