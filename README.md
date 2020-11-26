# ProjectRaspPi

Ceci est un projet pour mon premier semestre de DUT GEII.

Définition:

  La   domotique   est   l'ensemble   des   techniques   de   l'électronique,   de physique   du   bâtiment,   d'automatisme,   de   l'informatique   et   des télécommunications    utilisées    dans    les    bâtiments    permettaant    de centraliser  le  contrôle  des  difféérents  systèmes  et  sous-systèmes  de  la maison  et  de  l'entreprise.  La  domotique  vise  à  apporter  des  solutions techniques  pour  répondre  aux  besoins  de  confort,  de  sécurité  et  de communication (commandes à distance, signaux visuels ou sonores, etc.) que l'on peut retrouver dans les maisons...

Sujet :

  Le   cabinet   d’architecte LMI,   spécialisés   en maison   intelligente   – domotique,  souhaite  pour  répondre  à  un  appel  d’offér  e  (Light  Control) réaliser  une maquettae  présentant  un éclairage  innovant,  basé  sur  une carte RaspberryPi.Il recherche donc un spécialiste pouvant élaborer cettae maquettaeASAP(délai court inhérent au exigences du métier – 2 mois).Projet Raspberry Pi – thème 2020-2021Au nom de ta start-up que tu créeras peut être un jour, tu acceptes ce dé  fi..LMI te fournit le cahier des charges du projet. A toi de jouer  !
  
Cahier des charges de la maquette Light Control:

 Introduction  :
  Le  projet Light  Control  vise  à  rendre  intelligent  l’éclairage  dans  une maison, un hôtel, une entreprise... en confiant la gestion de l’éclairage à un ordinateur.
  Il permettra entre autre de moduler les niveaux et tonalités de l’éclairage de  chaque  pièce  en  fonction  des  souhaits  de  l’utilisateur,  de  l’ambiance lumineuse naturelle, de paramètres écologiques...
  La fonction de chaque appareillage sera gérée par l’ordinateur (quel effet à un interrupteur, comment allumer ce luminaire).
  Le système permettra également de simuler une présence en scénarisant l’éclairage, de façon à dissuader d’éventuels visiteurs inopportuns.
  
  La maquettae  de Light  Control  sera  un  démonstrateur  pour  les  futurs clients.
  Elle  doit  montrer  la  puissance  du  système  sur  un  exemple  simple  et précis.
  La maquette Light Control montrera la fonctionnalité du système dans le cas  d’une  pièce  à  deux  entrées,  donc deux  points  de  commande  et un luminaire central.
  
 Fonctionnalités de la maquette:
 
 Niveau 1  : va et vient
  L’appui sur l’un ou l’autre des 2 BP à pour effet d’allumer la led si elle est éteinte ou de l’éteindre si elle est allumée.
  
 Niveau 2  : gradateur
  Si l’utilisateur laisse le doigt appuyer plus d’une seconde sur l’un des 2  BP et   que   la   led   est   éteinte,   alors   l’allumage   de   la   led   se   fait progressivement  de  0  (led  éteinte)  jusque  à  atteindre  la  luminosité maximale ou relâchement du BP.Si  l’utilisateur appuie moins d’une seconde sur l’un des 2  BP, allumage type niveau1.
  
 Niveau 3  : commande à distance
  Cette fonction avancée  de Light Control permet à l’utilisateur de piloter l’éclairage  (va  et  vient  et  gradateur)  via  un  écran  de  contrôle  sur  un smartphone. L’ergonomie de l’écran de contrôle ainsi que la solution de connexion  entre  le  Raspberry  Pi  et  le  smartphone  sont  laissés  à  votre initiative.
 Niveau 4  : scenarii anti-intrusion
  Le  système Light  Control  doit  permettar  e  de  piloter  l’éclairage  de  la maison pendant l’absence de son propriétaire pour simuler une présence et  dissuader  les  éventuels  cambrioleurs.  Plusieurs  scenarii  doivent  être implémentés pour éviter la redondance un jour sur l’autre. Ces difféérents scenarii et leur activation sont laissés à votre initiative.
  
  Les éventuelles interventions sur le Raspberry Pi doivent pouvoir se faire à distance,  soit  en filaire,  soit  en  wifi, mais sans  avoir  à  connecter  un écran,   une   souris   et   un   clavier  !   (Idéalement,   il   faudrait   pouvoir intervenir à distance chez le client (via internet)).
  Pour  la maquette,  et  il  vous  sera  demandé  de  le faire  le  jour  de  la présentation,  vous  devez  pouvoir  vous  connecter  au  Raspberry  Pi  soit par SSH, soit par VNC.
  Un document annexe précise la procédure pour ces deux possibilités
  
  Matériels de la maquette Light Control
  
  Pour  réaliser  la  maquette Light  Control,  vous disposez de :
    1 Raspberry Pi
    2 boutons poussoirs
    1 Led
    2 résistances pour alimenter la Led
    2 résistances de pull-up pour les boutons poussoirs
    
   Le  schéma  de  câblage  de  la  maquettae  sera  réalisé par vos soins.
  
