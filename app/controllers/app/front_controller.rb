module App
  # FrontsController
  class FrontController < AppController
    layout 'layouts/templates/application'

    def custodia
    end

    def mercadosecundario
    end

    def marcolegal
    end

    def persona
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

  end
end
