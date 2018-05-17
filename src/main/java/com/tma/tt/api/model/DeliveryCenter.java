package com.tma.tt.api.model;

import com.tma.tt.api.common.Validatable;
import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiResource;

import javax.persistence.*;
import java.io.Serializable;

@JsonApiResource(type = "delivery-centers")
@Entity
@Table(name="delivery_center")
public class DeliveryCenter implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="delivery_center_id")
    private int deliveryCenterId;
    
    @Basic
    @Column(name = "description", nullable = false, insertable = true, updatable = true, length = 45)
    private String description;

	public int getDeliveryCenterId() {
		return deliveryCenterId;
	}

	public void setDeliveryCenterId(int deliveryCenterId) {
		this.deliveryCenterId = deliveryCenterId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
    
}
