package org.product.service;

import java.util.List;

import org.product.model.Comment;
import org.springframework.stereotype.Component;

@Component
public interface ProductDAOService {
	
	void addComments(Comment comment);
	List<Comment> getAllComments();

}
