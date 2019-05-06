/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author laptopfpt.com.vn
 */
@Entity
@Table(name = "Television")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Television.findAll", query = "SELECT t FROM Television t"),
    @NamedQuery(name = "Television.findByProductId", query = "SELECT t FROM Television t WHERE t.productId = :productId"),
    @NamedQuery(name = "Television.findById", query = "SELECT t FROM Television t WHERE t.id = :id")})
public class Television implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ProductId")
    private Integer productId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Id")
    private int id;
    @JoinColumn(name = "ProductId", referencedColumnName = "Id", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Product product;

    public Television() {
    }

    public Television(Integer productId) {
        this.productId = productId;
    }

    public Television(Integer productId, int id) {
        this.productId = productId;
        this.id = id;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (productId != null ? productId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Television)) {
            return false;
        }
        Television other = (Television) object;
        if ((this.productId == null && other.productId != null) || (this.productId != null && !this.productId.equals(other.productId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Television[ productId=" + productId + " ]";
    }
    
}
