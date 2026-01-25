# Progetto-Applicazioni Web, Mobile e Cloooud

# Chinese Dictionary

## Progetto
Obiettivo: realizzare un’applicazione web cloud-native semplice ma completa:  
• Frontend  
• Backend  
• Database  
Deployment: su qualsiasi cloud provider oppure in locale

## Descrizione
Il progetto consiste in dizionario di cinese, compreso di significato della parola in italiano, la traduzione in cinese, pronuncia (in pinyin) e note. Inoltre in questo progetto accedendo all'area admin è possibile inserire nuove parole e modificarle senza dover andare a modificare direttamente il database.

## Funzionalità
- Area Pubblica  
  •	Ricerca Avanzata: Cerca parole per significato, in caratteri cinesi, pronuncia pinyin o note  
  •	Design Responsive: Ottimizzato per mobile, tablet e desktop  

- Area Amministrativa  
•	Autenticazione: Sistema di login con password  
•	Timeout Sessione: Logout automatico dopo 5 minuti di inattività  
•	Tastiera Virtuale: Inserimento facilitato dei toni pinyin  
•	Messaggistica: Feedback visivo per azioni completate/errori  
•	Controllo Duplicati: Previene inserimento di parole identiche   
•	Gestione di:
  + Create: Aggiunta nuove parole con validazione duplicati
  + Read: Visualizzazione lista parole con ricerca
  + Update: Modifica parole esistenti        
 
- Funzionalità Tecniche  
    •	Pattern MVC: Separazione chiara tra logica, dati e presentazione  
    •	Singleton Database: Una sola connessione attiva al database  
    •	Validazione Input  
    •	Gestione Errori  

## Architettura MVC
<img width="638" height="165" alt="image" src="https://github.com/user-attachments/assets/b6c316c2-b483-4a0c-a468-2888ca6102f2" />

## Architettura Deployment
![Dep_ChineseDictionary](https://github.com/user-attachments/assets/74c667ed-ab82-44a8-802a-0b5efc79daf4)

## Schema Database
|    Dictionary  |                        |
|----------------|------------------------|
| id             | INT PK Auto_Increment  | 
| meaning        | TEXT NOT NULL          |
| chinese        | VARCHAR(255) NOT NULL  |
| pronounce      | VARCHAR(255) NOT NULL  |
| note           | TEXT                   |

## Scelte progettuali
1.	Implementazione in pattern MVC
  •	Separazione chiara delle responsabilità  
  •	Facilità di manutenzione e scalabile per future estensioni  
3. Database con pattern Singleton  
  •	Una sola connessione attiva al database  
  •	Prevenzione di connessioni multiple  
4. Unico punto di ingresso con routing manuale  
  •	Controllo centralizzato del flusso applicativo  
  •	Gestione uniforme delle sessioni  
  •	Routing semplice  
5. Sicurezza, scelte Implementate:  
  •	SQL Injection: Prevista tramite prepared statements  
  •	HTML Encoding: htmlspecialchars() su tutti gli output  
  •	Session security: 5 minuti di inattività massima  
  •	Password Configurabile: In file PHP (index.php), non in database  
  •	Validation Server-side  
6. Hosting: InfinityFree  
  •	Hosting gratuito  
  •	Database MySQL e phpMyAdmin incluso   
  •	Supporto PHP  
  •	Upload dei file con FTP  

## Link alla pagina Web
https://chinesedictionary.gt.tc
Password per accedere all'area Admin:AWMC2

## Autore
Romagnoli Elisa
