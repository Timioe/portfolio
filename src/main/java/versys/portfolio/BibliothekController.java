package versys.portfolio;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import versys.portfolio.model.Buecher;

/**
 * REST-Controller unseres einfachen Webservices.
 */
@RestController
@RequestMapping("/api/bibliothek")
public class BibliothekController {

    // Dependency-Injection der Service-Klasse
    @Autowired
    private BibliothekService bibService;

    /**
     * Handler-Methode für GET-Anfragen.
     * @return Liste aller vorhandenen Einträge.
     */
    @GetMapping
    public List<Buecher> getAllEntries() {
        return this.bibService.getEntries();
    }

    /**
     * Handler-Methode für POST-Anfragen.
     *
     * @param request Anzulegender Eintrag
     * @return Angelegter Eintrag
     */
    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Buecher createNewEntry(@RequestBody CreateRequest request) {
        // Neuen Eintrag speichern
        Buecher entry = new Buecher();
        //entry.setName(request.name);
        this.bibService.addEntry(entry);

        // Gespeicherte Daten zurück geben
        return entry;
    }

    /**
     * Hilfsklasse zur Deserialisierung der JSON-Anfrage zur Anlage eines
     * Eintrags.
     */
    public static class CreateRequest {
        public String name = "";
    }
}
