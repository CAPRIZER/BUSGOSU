require 'gosu'
require 'mechanize'

$mechanize = Mechanize.new


class GameWindow < Gosu::Window
  def initialize
    super 1422, 875
    self.caption = "PDSC BUS SYSTEM"

    # BUS => IMAGES

    @image = Gosu::Image.new(self, 'fond.png', false)
    #@imageBus = Gosu::Image.new('bus.png', false)
    #@imageMetro = Gosu::Image.new('metro.jpg', false)

    # BUS => TEMPS

    @font = Gosu::Font.new(self, "Arial", 18)


  end

  def update
    #PC1 => PORTE DE CHAMPERRET
    nombre = 0
    $page = $mechanize.get('http://www.ratp.fr/horaires/fr/ratp/bus/prochains_passages/PP/BPC1/PC1_4044_4072/A')
    $page.search('#contenu_horaire #prochains_passages tbody td').each do |test|
      ##AJOUTER LA FONCTION ENVOIE DEMAIL SI IL EST 10 H OU 8H BREF SI LE BUS ARRIVE DANS 3M
      if test.text != "Porte de Champerret" && nombre != 1
        nombre = 1
        $tempsPC1 = test.text
      end
    end

    #PC1 => PONT DU GARIGLIANO
    nombre = 0
    $page = $mechanize.get('http://www.ratp.fr/horaires/fr/ratp/bus/prochains_passages/PP/BPC1/PC1_4044_4072/R')
    $page.search('#contenu_horaire #prochains_passages tbody td').each do |test|
      ##AJOUTER LA FONCTION ENVOIE DEMAIL SI IL EST 10 H OU 8H BREF SI LE BUS ARRIVE DANS 3M
      if test.text != "Pont du Garigliano" && nombre != 1
        nombre = 1
        $tempsPC1_2 = test.text
      end
    end

    #PC1 > PORTE DE ST CLOUD GARE ROUTIERE
    nombre = 0
    $page = $mechanize.get('http://www.ratp.fr/horaires/fr/ratp/bus/prochains_passages/PP/BPC1/PC1_4071/R')
    $page.search('#contenu_horaire #prochains_passages tbody td').each do |test|
      ##AJOUTER LA FONCTION ENVOIE DEMAIL SI IL EST 10 H OU 8H BREF SI LE BUS ARRIVE DANS 3M
      if test.text != "Pont du Garigliano" && nombre != 1
        nombre = 1
        $tempsPC1_3 = test.text
      end
    end

    #ligne9
    nombre = 0
    $page = $mechanize.get('http://www.ratp.fr/horaires/fr/ratp/metro/prochains_passages/PP/porte+de+saint+cloud/9/A')
    $page.search('#contenu_horaire #prochains_passages tbody td').each do |test|
      ##AJOUTER LA FONCTION ENVOIE DEMAIL SI IL EST 10 H OU 8H BREF SI LE BUS ARRIVE DANS 3M
      if test.text != "Mairie de Montreuil" && nombre != 1
        nombre = 1
        $ligne9 = test.text
      end
    end

    #ligne9 2
    nombre = 0
    $page = $mechanize.get('http://www.ratp.fr/horaires/fr/ratp/metro/prochains_passages/PP/porte+de+saint+cloud/9/R')
    $page.search('#contenu_horaire #prochains_passages tbody td').each do |test|
      ##AJOUTER LA FONCTION ENVOIE DEMAIL SI IL EST 10 H OU 8H BREF SI LE BUS ARRIVE DANS 3M
      if test.text != "Pont de Sèvres" && nombre != 1
        nombre = 1
        $ligne9_2 = test.text
      end
    end

    #72
    nombre = 0
    $page = $mechanize.get('http://www.ratp.fr/horaires/fr/ratp/bus/prochains_passages/PP/B72/72_97_156/R')
    $page.search('#contenu_horaire #prochains_passages tbody td').each do |test|
      ##AJOUTER LA FONCTION ENVOIE DEMAIL SI IL EST 10 H OU 8H BREF SI LE BUS ARRIVE DANS 3M
      if test.text != "Parc de Saint-Cloud" && nombre != 1
        nombre = 1
        $temps72 = test.text
      end
    end

    #72
    nombre = 0
    $page = $mechanize.get('http://www.ratp.fr/horaires/fr/ratp/bus/prochains_passages/PP/B72/72_82_130/R')
    $page.search('#contenu_horaire #prochains_passages tbody td').each do |test|
      ##AJOUTER LA FONCTION ENVOIE DEMAIL SI IL EST 10 H OU 8H BREF SI LE BUS ARRIVE DANS 3M
      if test.text != "Parc de Saint-Cloud" && nombre != 1
        nombre = 1
        $temps72_1 = test.text
      end
    end

    #72
    nombre = 0
    $page = $mechanize.get('http://www.ratp.fr/horaires/fr/ratp/bus/prochains_passages/PP/B72/72_82_130/A')
    $page.search('#contenu_horaire #prochains_passages tbody td').each do |test|
      ##AJOUTER LA FONCTION ENVOIE DEMAIL SI IL EST 10 H OU 8H BREF SI LE BUS ARRIVE DANS 3M
      if test.text != "Hotel de Ville" && nombre != 1
        nombre = 1
        $temps72_2 = test.text
      end
    end

    #62
    nombre = 0
    $page = $mechanize.get('http://www.ratp.fr/horaires/fr/ratp/bus/prochains_passages/PP/B62/62_1350/A')
    $page.search('#contenu_horaire #prochains_passages tbody td').each do |test|
      ##AJOUTER LA FONCTION ENVOIE DEMAIL SI IL EST 10 H OU 8H BREF SI LE BUS ARRIVE DANS 3M
      if test.text != "Porte de France" && nombre != 1
        nombre = 1
        $temps62 = test.text
      end
    end

    #22
    nombre = 0
    $page = $mechanize.get('http://www.ratp.fr/horaires/fr/ratp/bus/prochains_passages/PP/B22/22_33_56/A')
    $page.search('#contenu_horaire #prochains_passages tbody td').each do |test|
      ##AJOUTER LA FONCTION ENVOIE DEMAIL SI IL EST 10 H OU 8H BREF SI LE BUS ARRIVE DANS 3M
      if test.text != "Saint-Augustin" && nombre != 1
        nombre = 1
        $temps22 = test.text
      end
    end

    #22
    nombre = 0
    $page = $mechanize.get('http://www.ratp.fr/horaires/fr/ratp/bus/prochains_passages/PP/B22/22_33_56/R')
    $page.search('#contenu_horaire #prochains_passages tbody td').each do |test|
      ##AJOUTER LA FONCTION ENVOIE DEMAIL SI IL EST 10 H OU 8H BREF SI LE BUS ARRIVE DANS 3M
      if test.text != "Porte de Saint- Cloud" && nombre != 1
        nombre = 1
        $temps22_2 = test.text
      end
    end
end

  def draw
    @image.draw(0, 0, 1)
    #@imageBus.draw(1000, 200, 1)
    #@imageMetro.draw(400, 200, 1
    red = 0xFFFF0000
    @font.draw($tempsPC1, 1071, 224, 1, 2, 1, red)
    @font.draw($tempsPC1_2, 1036, 729, 1, 2, 1, red)
    @font.draw($tempsPC1_3, 338, 418, 1, 2, 1, red)
    @font.draw($ligne9, 470, 738, 1, 2, 1, red)
    @font.draw($ligne9_2, 470, 808, 1, 2, 1, red)
    @font.draw($temps72, 374, 116, 1, 2, 1, red)
    @font.draw($temps72_1, 1047, 273, 1, 2, 1, red)
    @font.draw($temps72_2, 1028, 836, 1, 2, 1, red)
    @font.draw($temps62, 316, 492, 1, 2, 1, red)
    @font.draw($temps22, 1016, 786, 1, 2, 1, red)
    @font.draw($temps22_2, 1046, 328, 1, 2, 1, red)

  end
end

window = GameWindow.new
window.show
