const API_URL = "http://localhost:8080/api";

/**
 * Daten nach dem Laden der Seite vom Server abrufen und anzeigen. Ebenso
 * Event Handler zum Anlegen neuer Einträge registrieren.
 */
window.addEventListener("load", async () => {
    // Vorhandene Einträge abrufen und anzeigen
    //let entries = await fetch(API_URL);
    //entries = await entries.json();
    //await entries._embedded.serie.forEach(displayEntry);
  debugger;
    // Event Handler Netflix
    let formElement = document.getElementById("kit_ka");
    formElement.addEventListener("click", clickevent => {
	/*Hier Logik für Click Netflix  implementieren*/
        getEntries('kit_ka')
        // Old-School Abschicken des Formulars unterdrücken
        event.preventDefault();
        return false;
    });

	// Event Handler Prime Video
	let formElement1 = document.getElementById("dhbw_ka");
    formElement1.addEventListener("click", clickevent => {
	/*Hier Logik für Click Netflix  implementieren*/
        getEntries('dhbw_ka')
        // Old-School Abschicken des Formulars unterdrücken
        event.preventDefault();
        return false;
    });


});
/**
 * Hilfsfunktion zum Anlegen eines neuen Eintrags.
 */
async function getEntries(sName) {
  if (sName.trim() === "") return;

    // Backend-API aufrufen
    let entry = await fetch(API_URL + "/bibliothek/" + sName + "/buecher", {
        method: "GET"
	});

	let div = document.getElementById("series");
	div.innerHTML = "";

	console.log(entry);
    // Gespeicherten Eintrag anzeigen
	let entries = await entry.json();

  debugger;

	entries._embedded.serie.forEach(element => displayEntry(element));
}

function displayEntry(entry) {

  	let seriesDiv = document.getElementById("series");
	let label = document.createTextNode(entry.name);
	seriesDiv.appendChild(label);

};
