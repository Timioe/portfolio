const API_URL = "http://localhost:9090/api";

window.addEventListener("load", async () => {
	// Vorhandene Bibliotheken abrufen und anzeigen
	getBibs();

	// Old-School Abschicken des Formulars unterdrücken
	event.preventDefault();
	return false;
});

async function getBibs() {
	// Backend-API aufrufen
	let entry = await fetch(API_URL + "/bibliotheken/", {
		method: "GET"
	});

	// Gespeicherte BIbliotheken anzeigen
	let entries = await entry.json();
	entries._embedded.bibliotheken.forEach(element => displayBibs(element));
}

async function displayBibs(entry) {
	// Bibliothek anzeigen
	let div = document.getElementById("data");
	var h2 = document.createElement('h2');
	h2.setAttribute("id", entry.name)
	h2.appendChild(document.createTextNode(entry.name));
	div.appendChild(h2);

	// Bücher der Bibliothek besorgen und anzeigen
	// Backend-API aufrufen, URL durch href gesetzt
	let entryBuch = await fetch(entry._links.self.href + "/buecher", {
		method: "GET"
	});

	// Einträge in Konsole anzeigen
	console.log(entryBuch);
	
	// Gespeicherten Eintrag anzeigen
	let entries = await entryBuch.json();
	entries._embedded.buecher.forEach(element => displayEntry(element, entry.name));

}

function displayEntry(entry, bibName) {
	// Buch anzeigen
	let h2 = document.getElementById(bibName);
	var ul = document.createElement('ul');
	h2.appendChild(ul);
	var item = document.createElement('li');
	item.appendChild(document.createTextNode(entry.name));
	ul.appendChild(item);

};

