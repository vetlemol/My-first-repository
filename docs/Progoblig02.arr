include image
include color

fun draw-flag(F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12) -> Image:
  
  
#svensk riktig dim
  tv = overlay-xy(rectangle(50, 40, "solid", F4),50, 0, rectangle(20, 100, "solid", F5))

  topp= overlay-xy(tv, 70, 0, rectangle(90, 40, "solid", F4))

  midt = overlay-xy(topp, 0, 40, rectangle(160, 20, "solid", F5))

  bv = overlay-xy(midt, 0, 60, rectangle(50, 40, "solid", F4))

  fer = overlay-xy(bv, 70, 60, rectangle(90, 40, "solid", F4))
  
  
#Norge riktig dim

  TVN= (overlay-xy(square(60, "solid", F1), 60, 0, rectangle(40, 160, "solid", F2)))

  TOPN= (overlay-xy(TVN, 100, 0, rectangle(120, 60, "solid", F1)))


  MIDN= (overlay-xy(TOPN, 0, 60, rectangle(220, 40, "solid", F2)))



  BVN= (overlay-xy(MIDN, 0, 100, square(60, "solid", F1)))


  FULLN= (overlay-xy(BVN, 100, 100, rectangle(120, 60, "solid", F1)))


  FerN = (overlay-align("center", "middle", rectangle(220, 20, "solid", F3),  FULLN))

  DON = (underlay-xy(FerN, 70, 0, rectangle(20, 160, "solid", F3)))
  
  
  #Danmark riktig dim
tvd = overlay-xy(rectangle(60, 60, "solid", F6),60, 0, rectangle(20, 140, "solid", F7))

toppd= overlay-xy(tvd, 80, 0, rectangle(105, 60, "solid", F6))

  midtd = overlay-xy(toppd, 0, 60, rectangle(185, 20, "solid", F7))

bvd = overlay-xy(midtd, 0, 80, rectangle(60, 60, "solid", F6))

ferd = overlay-xy(bvd, 80, 80, rectangle(105, 60, "solid", F6))
 

  #Finland
  tvf = overlay-xy(rectangle(50, 40, "solid", F8),50, 0, rectangle(30, 110, "solid", F9))

toppf= overlay-xy(tvf, 80, 0, rectangle(100, 40, "solid", F8))

midtf = overlay-xy(toppf, 0, 40, rectangle(180, 30, "solid", F9))

bvf = overlay-xy(midtf, 0, 70, rectangle(50, 40, "solid", F8))

  ferf = overlay-xy(bvf, 80, 70, rectangle(100, 40, "solid", F8))
 
  
  
  #Island 
  TVI= (overlay-xy(square(70, "solid", F10), 70, 0, rectangle(40, 180, "solid", F11)))

TOPI= (overlay-xy(TVI, 110, 0, rectangle(140, 70, "solid", F10)))


MIDI= (overlay-xy(TOPI, 0, 70, rectangle(250, 40, "solid", F11)))


BVI= (overlay-xy(MIDI, 0, 110, square(70, "solid", F10)))


FULLI= (overlay-xy(BVI, 110, 110, rectangle(140, 70, "solid", F10)))


FerI = (overlay-align("center", "middle", rectangle(250, 20, "solid", F12),  FULLI))

DOI = (underlay-xy(FerI, 80, 0, rectangle(20, 180, "solid", F12)))


  

#færøyene riktig dim
  TVFA= (overlay-xy(square(60, "solid", F6), 60, 0, rectangle(40, 160, "solid", F7)))

  TOPFA= (overlay-xy(TVFA, 100, 0, rectangle(120, 60, "solid", F6)))


  MIDFA= (overlay-xy(TOPFA, 0, 60, rectangle(220, 40, "solid", F7)))


  BVFA= (overlay-xy(MIDFA, 0, 100, square(60, "solid", F6)))


  FULLFA= (overlay-xy(BVFA, 100, 100, rectangle(120, 60, "solid", F6)))


  FerFA = (overlay-align("center", "middle", rectangle(220, 20, "solid", F8),  FULLFA))

  DOFA = (underlay-xy(FerFA, 70, 0, rectangle(20, 160, "solid", F8)))
  
 
  NFAS= underlay-align("center", "center", DON, fer)
 
  NFASD= underlay-align("center", "center", NFAS, ferd)
  
  NFASDF= underlay-align("center", "center", NFASD, ferf)
  
  NFASDFI = underlay-align("center", "center", NFASDF, DOI)
  
  NFASDFI  #Norge/Faeroyene osv, for å få lagt alle flaggene på hverandre så de kan vises utifra å velge farge og plassering 
  
end #F1-F3 er for Norge og faeroyene siden de har identiske dimensjoner


t = "transparent"
Faeroyene = draw-flag("white", "blue", "red", t, t, t, t, t, t, t, t, t)

Sverige = draw-flag(t, t, t, "darkblue", "gold", t, t, t, t, t, t, t)

Norge = draw-flag("crimson", "white", "darkblue", t, t, t, t, t, t, t, t, t)

Danmark = draw-flag(t, t, t, t, t, "crimson", "white", t, t, t, t, t)

Finland = draw-flag(t, t, t, t, t, t, t, "white", "darkblue", t, t, t)

Island = draw-flag(t, t, t, t, t, t, t, t, t, "darkblue", "white", "crimson") 
#nyanser av farger for å få så likt flaggene som mulig

my-table = table: Land :: String
  row: "Island"
  row: "Norge"
  row: "Faeroyene"
  row: "Danmark"
  row: "Finland"
  row: "Sverige"
end

#tabell som viser alle landene og hvilken måte jeg har skrevet de på slik at man kan skrive rett inn i høyre vindu
my-table 
"Skriv et av landene:"
