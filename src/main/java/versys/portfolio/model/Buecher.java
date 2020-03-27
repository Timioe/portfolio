package versys.portfolio.model;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import lombok.Data;

/**
 * Entity-Klasse für ein Buch.
 */
@Entity
@Data
public class Buecher implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotNull
    private long id = 0L;
    
    @Column(length = 20, unique = true)
    @Size(min = 0, max = 20, message = "Die IMDB-ID darf maximal 20 Zeichen lang sein.")
    private String bookId = "";

    @Column(length = 64)
    @Size(min = 1, max = 64, message = "Der Name muss zwischen einem und 64 Zeichen lang sein.")
    @NotNull(message = "Der Name darf nicht leer sein.")
    private String name = "";
    
    @Min(value = 1, message = "Die Startjahr darf nicht kleiner 1900 sein.")
    private int yearFrom = 1900;
    
    
    @Min(value = 1, message = "Die Anzahl Staffeln darf nicht kleiner eins sein.")
    private int baender = 1;
    
    @Column(length = 64)
    @Size(min = 1, max = 64, message = "Das Land muss zwischen einem und 64 Zeichen lang sein.")
    @NotNull(message = "Das Land darf nicht leer sein.")
    private String sprache = "";
    
    @Lob
    private String description = "";
    
    @ManyToOne
    private Bibliothek bibliothek = null;
    

    
}
