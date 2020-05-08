package versys.portfolio.model;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import lombok.Data;

/**
 * Entity-Klasse für eine Bibliothek
 */
@Entity
@Data
public class Bibliothek implements Serializable {

    @Id
    @Column(length = 20)
    @Size(min = 1, max = 20, message = "Die ID muss zwischen einem und 20 Zeichen lang sein.")
    @NotNull(message = "Die ID darf nicht leer sein.")
    private String id = "";

    @Column(length = 64)
    @Size(min = 1, max = 64, message = "Der Name muss zwischen einem und 64 Zeichen lang sein.")
    @NotNull(message = "Der Name darf nicht leer sein.")
    private String name = "";

    @OneToMany(mappedBy = "bibliothek", cascade = {CascadeType.REMOVE})
    List<Buecher> buecher = new ArrayList<>();
    
}

