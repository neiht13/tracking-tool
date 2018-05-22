package com.tma.tt.api.model;

import com.tma.tt.api.common.Validatable;
import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiRelation;
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
    private Long deliveryCenterId;

	@JsonApiRelation
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "delivery_group_id", referencedColumnName = "delivery_group_id")
	private DeliveryGroup deliveryGroup;

	@Basic
	@Column(name = "name", nullable = false, insertable = true, updatable = true, length = 45)
	private String name;

    @Basic
    @Column(name = "description", nullable = false, insertable = true, updatable = true, length = 255)
    private String description;

	public Long getDeliveryCenterId() {
		return deliveryCenterId;
	}

	public void setDeliveryCenterId(Long deliveryCenterId) {
		this.deliveryCenterId = deliveryCenterId;
	}

	public DeliveryGroup getDeliveryGroup() {
		return deliveryGroup;
	}

	public void setDeliveryGroup(DeliveryGroup deliveryGroup) {
		this.deliveryGroup = deliveryGroup;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
    
}
