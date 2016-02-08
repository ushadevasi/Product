/**
 * 
 */
package org.product.service.impl;

import java.util.List;

import org.product.model.Comment;
import org.product.service.ProductDAOService;
import org.product.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAOService productDAOService;

	/* (non-Javadoc)
	 * @see org.product.service.ProductService#addComments(org.product.model.Comment)
	 */
	public void addComments(Comment comment) {
		
         productDAOService.addComments(comment);
	}

	/* (non-Javadoc)
	 * @see org.product.service.ProductService#getAllComments()
	 */
	public List<Comment> getAllComments() {
		// TODO Auto-generated method stub
		return productDAOService.getAllComments();
	}

}
