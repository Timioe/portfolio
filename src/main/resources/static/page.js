const API_URL = "http://localhost:9090/api";

window.addEventListener("load", async () => {
	// Vorhandene Einträge abrufen und anzeigen
	
	//Bibliotheken auch dynamisch abrufen und anhand deren Namen dann getEntries aufrufen und evtl für jede Bib einen neuen div erzeugen, in den dann
	//der Name der bib und die bücher in einer liste drunter gelegt werden können
	getEntries('kit_ka');
	getEntries('dhbw_ka')

	// Old-School Abschicken des Formulars unterdrücken
	event.preventDefault();
	return false;
});

async function getEntries(sName) {
	if (sName.trim() === "") return;

	// Backend-API aufrufen
	let entry = await fetch(API_URL + "/bibliotheken/" + sName + "/buecher", {
		method: "GET"
	});

		let oldName = "";
	// Gespeicherten Eintrag anzeigen
	let entries = await entry.json();
	entries._embedded.buecher.forEach(element => displayEntry(element, sName, oldName));
}

function displayEntry(entry, sName, oldName) {
	let div = document.getElementById("data");

	if (sName != oldName) {
		var h2 = document.createElement('h2');
		h2.appendChild(document.createTextNode(sName));
		div.appendChild(h2);
		oldName = sName;
	}
	var ul = document.createElement('ul');
	div.appendChild(ul);

	var item = document.createElement('li');
	item.appendChild(document.createTextNode(entry.name));
	ul.appendChild(item);

};

