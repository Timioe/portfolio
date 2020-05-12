package versys.portfolio.rep;

import versys.portfolio.model.Buch;
import java.util.List;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

/**
 * Spring Data REST Repository für die Buch-Entität.
 * Die Methoden können für die weitere Implementierung verwendet werden.
 */
@RepositoryRestResource(collectionResourceRel = "buecher", path = "buecher")
public interface BuecherRep extends PagingAndSortingRepository<Buch, Long> {
    
    List<Buch> findByName(@Param("name") String name);
    List<Buch> findByYearFrom(@Param("yearFrom") int yearFrom);
    
}
