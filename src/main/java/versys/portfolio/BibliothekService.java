package versys.portfolio;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;

import versys.portfolio.model.Buecher;

/**
 * Einfache Service-Klasse zur Verwaltung der Gästebucheinträge. Man
 * beachte, dass diese Klasse die Gästebucheinträge nur temporär speichert,
 * da wir uns Datenbankzugriffe noch nicht angeschaut haben.
 *
 * Die Annotation @Service kennzeichnet die Klasse als eine Serviceklasse,
 * also eine Klasse mit Geschäftslogik.
 */
@Service
public class BibliothekService {

    private static final List<Buecher> ENTRIES = new ArrayList<>();

    /**
     * Hinzufügen eines neuen Eintrags
     * @param entry Zu speichernder Eintrag
     */
    public void addEntry(Buecher entry) {
        ENTRIES.add(entry);
    }

    /**
     * Auslesen einer Liste aller EInträge
     * @return Liste aller gespeicherten Einträge
     */
    public List<Buecher> getEntries() {
        return ENTRIES;
    }

}

