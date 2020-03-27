package versys.bib.portfolio.rep;

import versys.bib.portfolio.model.Bibliothek;
import java.util.List;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

/**
 * Spring Data REST Repository für die StreamingService-Entität.
 */
@RepositoryRestResource(collectionResourceRel = "bibliotheken", path = "bibliotheken")
public interface BibliothekRep extends PagingAndSortingRepository<Bibliothek, String> {
    
    List<Bibliothek> findByName(@Param("name") String name);
}
