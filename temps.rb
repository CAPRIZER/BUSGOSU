def tempsbus
  mechanize = Mechanize.new
  $page = mechanize.get('http://www.ratp.fr/horaires/fr/ratp/bus/prochains_passages/PP/BPC1/PC1_4044_4072/A')
  $page.search('#contenu_horaire #prochains_passages tbody td').each do |test|
    ##AJOUTER LA FONCTION ENVOIE DEMAIL SI IL EST 10 H OU 8H BREF SI LE BUS ARRIVE DANS 3M
    if test.text != "Porte de Champerret"
        $tempsPC1 = test.text
    end
  end
  sleep(20)
end
