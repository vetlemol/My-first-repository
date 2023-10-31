Flagg:

TV= (overlay-xy(square(100, "solid", "red"), 110, 0, rectangle(30, 250, "solid", "blue")))
TOP= (overlay-xy(TV, 150, 0, rectangle(180, 100, "solid", "red")))
BLUE= (overlay-xy(TOP, 0, 110, rectangle(330, 30, "solid", "blue")))
BV= (overlay-xy(BLUE, 0, 150, square(100, "solid", "red")))
FULL= (overlay-xy(BV, 150, 150, rectangle(180, 100, "solid", "red")))
RAMME=rectangle(332, 252, "outline", "black")
FIN=overlay-align("center", "middle", FULL, RAMME)
FIN
For å lage flagget valgte jeg først å starte med venstre siden av den øverste halvdelen. Jeg har delt alle linjer slik at det tar hånd om to "bokser" av gangen. Jeg bruker «overlay-xy» for å kunne sette boksene ved siden av hverandre med et bestemt mellomrom. Først tok jeg den første røde boksen som jeg valgte skulle være et kvadrat med størrelse 100, og deretter skulle det være et mellomrom på 10 før en blå linje på 30 / 250. 
Jeg ga dette navnet TV (Top Venstre) slik at det skulle være enkelt å vite hva det var. Neste jeg gjorde var å fullføre toppen av flagget ved å på nytt ta overlay-xy med TV og valgte å sette inn et rødt rektangel. Etter det ville jeg sette inn den vannrette blå linjen. Når den var ferdig kalte jeg alt jeg hadde gjort hittil for BLUE for å huske at jeg var ferdig med alt blått. 
Etter dette var det BV som står for Bunn Venstre. Der måtte jeg sørge for at avstanden til den blå linjen var lik som for kvadratet over. Etter dette manglet jeg kun det siste rektangelet som jeg plasserte med lik avstand som det over. Jeg kalte dette FULL for å huske at det var et fullt flagg. 
Til slutt ville jeg ha med en liten ramme rundt og brukte et rektangel som var så vidt større enn størrelsen på selve flagget og valgte å ikke fylle det, men bare ha svart farge på omrisset av rektangelet. Deretter var det bare å sørge for at rammen ble sentrert slik at det akkurat passet rundt flagget. 
