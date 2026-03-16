# SmartInstaller
IT Deployment Tool per installazioni software massive e silenziose.

Introduzione
Ciao a tutti colleghi! Sapete meglio di me quanto tempo si perde preparando nuove postazioni in laboratorio o in ufficio. Ogni volta la solita trafila: Chrome, Acrobat Reader, Office, 7Zip... Un'operazione ripetitiva che ruba ore preziose.

Per risolvere questo problema nel mio lavoro quotidiano, ho sviluppato SmartInstaller, un tool leggero e flessibile pensato proprio per noi assistenti tecnici. E oggi ho deciso di rilasciarlo come Freeware per tutti voi!

Che cos'è SmartInstaller?
È un'applicazione (HTA + Scripting) che permette di creare una vera e propria Libreria Software centralizzata su un server o un NAS. Una volta configurato, basta lanciare il programma su un nuovo PC, scegliere un "Profilo" (es. "Base Laboratorio") e il tool installerà tutto in sequenza, in modo silenzioso, chiedendovi i permessi di amministratore una sola volta.

Caratteristiche Principali (v1.31):
Portabilità Totale: Il software trova e carica automaticamente la configurazione nella propria cartella. Se lo sposti in una nuova cartella, lui si adatta da solo!
Auto-Creazione: Se è la prima volta che lo usi, SmartInstaller crea automaticamente un file di configurazione vuoto pronto per essere popolato.
Installazioni Massive: Seleziona un profilo e installa decine di software in un colpo solo.
Profili Dinamici: Crea gruppi di software e includi profili base per evitare duplicati.
Copia Locale: Funzione per scaricare o copiare i file sul disco del PC senza installarli.
UAC Singola: Richiede l'elevazione a amministratore solo all'inizio della procedura.
⚠️ Nota importante sugli Antivirus (Falsi Positivi)
Essendo uno strumento tecnico basato su script (.HTA e .BAT) che interagiscono con il sistema per installare software, alcuni antivirus potrebbero segnalare il file ZIP come potenzialmente pericoloso.

Si tratta di falsi positivi: il software è assolutamente pulito e non contiene codice malevolo. Se il download viene bloccato, è necessario autorizzarlo nelle impostazioni del browser o dell'antivirus. In fase di esecuzione, Windows SmartScreen potrebbe mostrare un avviso: cliccate su "Ulteriori informazioni" e poi su "Esegui comunque".
Come scaricarlo e usarlo
Potete scaricare il pacchetto ZIP allegato a questo post. All'interno troverete solo i due file necessari per il funzionamento:

SmartInstaller.hta: Il cuore dell'applicazione (include la guida premendo F1).
Avvia-SmartInstaller.bat: Il launcher consigliato per l'uso in rete.
Licenza: Il software è rilasciato come Freeware. Potete usarlo liberamente, copiarlo e condividerlo in ufficio o a scuola con i vostri collaboratori.
