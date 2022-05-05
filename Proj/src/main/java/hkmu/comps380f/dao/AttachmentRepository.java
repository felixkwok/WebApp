package hkmu.comps380f.dao;

import hkmu.comps380f.model.Attachment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

/**
 *
 * @author felix
 */
@Component
public interface AttachmentRepository extends JpaRepository<Attachment, Long> {

    public Attachment findByTicketIdAndName(long ticketId, String name);
}
