### Samolepky na přístroj AIRDOS

Samolepky jsou vytištěné na laminovaných páskách  TZE-111, TZE-121 a TZE-151. 

Po vytištení je potřeba samolepkám diagonálně zastřihnout rohy, aby bylo snížena možnost jejich odloupnutí.  Na přístroj se samolepky lepí podle následujících obrázků.

**Povrch přístroje je potřeba před lepením odmastit gázovým čvercem namočeným v alkoholu!**

<img src="https://raw.githubusercontent.com/UniversalScientificTechnologies/AIRDOS/master/DOC/labels/photo/A004_top_panel.jpg" width="800" />

<img src="https://raw.githubusercontent.com/UniversalScientificTechnologies/AIRDOS/master/DOC/labels/photo/A004_back_panel.jpg" width="800" />

Kromě těchto vnitřních samolepek existují ještě vnitřní samolepky se seriovými čísly, které jsou nalepeny na vnitřní stranu vyjmutelných plechových dílů. 

### Generování QRkódů

QR kód se generuje spuštěním příkazu

    ./generate_QR.sh

Ještě před tím je ale potřeba ve skriptu nastavit obsah, který má QRkód obsahovat. 

Tím vznikne soubor AIRDOS01-QRcode.svg, který obsahuje aktualizovaný QRkód. 
Tento soubor je prolinkován se souborem QRcode_24x24.svg ve kterém by se měl automaticky aktualizovat při otevření souboru. 

Soubor QRcode_24x24.pdf je nutné ručně exportovat. 
