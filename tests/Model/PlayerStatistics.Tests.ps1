#
# Öppet API för SHL
# <div> <p>För den som önskar finns möjlighet att ta del av nyheter, statistik, video och matchinformation via SHL:s öppna API. Kontakta <a href='mailto:support@shl.se'>support@shl.se</a> med önskemål om detta och för eventuella frågor. Vid förfrågan om åtkomst, vänligen ange tänkt syfte och användningsområde för ditt nyttjande av API:et.</p> <h1>Allmänna villkor</h1> <p>All användning av SHL:s öppna API kräver godkännande av gällande allmänna villkor.</p> <p><a href='/files/terms_v1_0.pdf'>Allmänna villkor (PDF)</a></p> <h1>Dokumentation av API:et</h1> <p>All dokumentation kring API:et finns samlad på denna sida.</p> <h2>Autentisering</h2> <p>All kommunikation med API:et kräver att konsumenten autentiserar sig. Denna autentisering sker enligt OAuth2. Ytterligare detaljer kring autentiseringsförfarandet kommuniceras vid godkännande av förfrågan om åtkomst, samt kommer att publiceras på denna sida.</p> <h2>API-ändpunkter</h2> <p>Nedan följer dokumentation av API:et och dess olika ändpunkter.</p> </div>
# Version: 1.0
# Contact: support@shl.se
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSSHL' -name 'PlayerStatistics' {
    Context 'PlayerStatistics' {
        It 'Initialize-PlayerStatistics' {
            # a simple test to create an object
            #$NewObject = Initialize-PlayerStatistics -PlayerId "TEST_VALUE" -GP "TEST_VALUE" -Info "TEST_VALUE" -Rank "TEST_VALUE" -TOI "TEST_VALUE" -TOIGP "TEST_VALUE" -A "TEST_VALUE" -BkS "TEST_VALUE" -G "TEST_VALUE" -GWG "TEST_VALUE" -Hits "TEST_VALUE" -Minus "TEST_VALUE" -PIM "TEST_VALUE" -PPG "TEST_VALUE" -Plus "TEST_VALUE" -PlusMinus "TEST_VALUE" -SOG "TEST_VALUE" -TP "TEST_VALUE"
            #$NewObject | Should -BeOfType PlayerStatistics
            #$NewObject.property | Should -Be 0
        }
    }
}
