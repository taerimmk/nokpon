package com.june.app.board.repository.jpa;

import java.util.Collection;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.june.app.board.model.Comment;
import com.june.app.board.repository.CommentRepository;
import com.june.app.user.repository.UserRepository;
//Join;

/**
 * JPA implementation of the {@link UserRepository} interface.
 *
 * @author Mike Keith
 * @author Rod Johnson
 * @author Sam Brannen
 * @author Michael Isvy
 * @since 22.4.2006
 */
@Repository
public class CommentRepositoryImpl implements CommentRepository {

    @PersistenceContext
    private EntityManager em;

    @Override
    @SuppressWarnings("unchecked")
    public Collection<Comment> commentList(Comment vo) {
    	String queryString = "SELECT comment FROM Comment comment WHERE comment.useYn ='Y'";
    	int pageSize = vo.getPageSize();
    	int pageNumber = (int) vo.getPageIndex();
        Query query = this.em.createQuery(queryString);
        query.setFirstResult((pageNumber - 1) * pageSize);
        query.setMaxResults(pageSize);
        return query.getResultList();
    }
    
   
    @Override
    public Integer commentListCnt(Comment vo) {
    	
    	String queryString = "SELECT count(*) FROM Comment comment WHERE comment.useYn ='Y'";
        Query query = this.em.createQuery(queryString);
        Integer count = (Integer) query.getSingleResult();
        return count;

    }
  
    @Override
    public void save(Comment vo) {
    	if (vo.getNttId() == null) {
    		this.em.persist(vo);     		
    	} else {
    		this.em.merge(vo); 
    		this.em.flush(); 
    	}
    }
 
}
