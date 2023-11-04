include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize komponent using string-sanitizer
    sanitize energi using string-sanitizer
end


#siden det bare er en string uten tallverdi, kan vi si at stringer som er uten tallverdi kan være det vi har beregnet som tallverdien til forbruket av bil (som jeg la inn lenger ned markert med "#forbruk bil"), da kan vi få med forbruket til bil i bar-chart også.
#dette forutsetter at det bare er èn verdi som er 'none' og er ikke en spesielt god løsning, men hadde gitt ønsket resultat i akkurat denne sammenhengen. 

fun energi-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    |some(a) => a
    |none => 0 #altså å legge '|none => 40 her
  end
where:
  energi-to-number("0") is 0 #og 'is 40 her'
  energi-to-number("12") is 12
end


tabell = transform-column(kWh-wealthy-consumer-data, 'energi', energi-to-number)
"tabell"
tabell

#forbruk bil, valge bare et tall for å visualiere
fun bil():
  energy-per-day = (( 40 / 10 ) * 10 )
  energy-per-day
end
 


#lager nytt table for å senere kunne hente ut 'row 0' fra denne som er oppdatert bil med energi
new-table = table: komponent :: String, energi :: Number
  row: "bil", 40
end

#legger raden fra new-table sammen med 'tabell' for å få den med i nytt table som jeg kaller 'tabell-2'
new-row = get-row(new-table, 0)
tabell-2 = add-row(tabell, new-row)

"tabell 2"
tabell-2


fun sum-of-energi():
  sum(tabell-2, 'energi')
end

"Forbruk totalt"
sum-of-energi()

#Siden raden med bil fra 'new-table' er med i 'tabell-2', bruker jeg tabell-2 når jeg vil vise bar-chart for å få med bil med riktig energi på slutten av bar charten.
"bar chart"
bar-chart(tabell-2, 'komponent', 'energi')


#En annen løsning å få vist all data på tabellen og i barchart er å lage en ny table hvor man skriver inn alle verdiene manuelt. 
#Ved å gjøre dette kan vi sørge for at bil kun stå en gang, og med riktig verdi


tabell-3 = table: komponent :: String, energi :: Number
  row: "bil", 40
  row: "fly", 30
  row: "ovnk", 37
  row: "lys",	5
  row: "dingser",	4
  row: "mlk",	15
  row: "varer",	48
  row: "varetransport",	12
  row: "offtjen",	4
end

"tabell 3"
tabell-3

"oppdatert bar chart"
bar-chart(tabell-3, 'komponent', 'energi')

