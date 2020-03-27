package versys.portfolio.rep;

import versys.portfolio.model.Buecher;
import java.util.List;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

/**
 * Spring Data REST Repository für die StreamingService-Entität.
 */
@RepositoryRestResource(collectionResourceRel = "buecher", path = "buecher")
public interface BuecherRep extends PagingAndSortingRepository<Buecher, Long> {
    
    List<Buecher> findByName(@Param("name") String name);
    Buecher findByBookId(@Param("bookId") String imdbId);
    List<Buecher> findByYearFrom(@Param("yearFrom") int yearFrom);
    
}
