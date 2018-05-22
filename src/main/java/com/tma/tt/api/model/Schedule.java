package com.tma.tt.api.model;

import com.tma.tt.api.common.Validatable;
import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiRelation;
import io.katharsis.resource.annotations.JsonApiResource;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;

@JsonApiResource(type = "schedules")
@Entity
@Table(name="schedule")
public class Schedule implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="schedule_id")
    private Long scheduleId;
    
    @Basic
    @Column(name = "week_id", nullable = false, insertable = true, updatable = true, length = 10)
    private String weekId;

	@JsonApiRelation
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id", referencedColumnName = "user_id")
	private User user;

	@Enumerated(EnumType.STRING)
	@Column(name = "mon_m")
	private YesNoFlag monM;

	@Enumerated(EnumType.STRING)
	@Column(name = "mon_a")
	private YesNoFlag monA;

	@Enumerated(EnumType.STRING)
	@Column(name = "tue_m")
	private YesNoFlag tueM;

	@Enumerated(EnumType.STRING)
	@Column(name = "tue_a")
	private YesNoFlag tueA;

	@Enumerated(EnumType.STRING)
	@Column(name = "wed_m")
	private YesNoFlag wedM;

	@Enumerated(EnumType.STRING)
	@Column(name = "wed_a")
	private YesNoFlag wedA;

	@Enumerated(EnumType.STRING)
	@Column(name = "thu_m")
	private YesNoFlag thuM;

	@Enumerated(EnumType.STRING)
	@Column(name = "thu_a")
	private YesNoFlag thuA;

	@Enumerated(EnumType.STRING)
	@Column(name = "fri_m")
	private YesNoFlag friM;

	@Enumerated(EnumType.STRING)
	@Column(name = "fri_a")
	private YesNoFlag friA;

	public Long getScheduleId() {
		return scheduleId;
	}

	public void setScheduleId(Long scheduleId) {
		this.scheduleId = scheduleId;
	}

	public String getWeekId() {
		return weekId;
	}

	public void setWeekId(String weekId) {
		this.weekId = weekId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public YesNoFlag getMonM() {
		return monM;
	}

	public void setMonM(YesNoFlag monM) {
		this.monM = monM;
	}

	public YesNoFlag getMonA() {
		return monA;
	}

	public void setMonA(YesNoFlag monA) {
		this.monA = monA;
	}

	public YesNoFlag getTueM() {
		return tueM;
	}

	public void setTueM(YesNoFlag tueM) {
		this.tueM = tueM;
	}

	public YesNoFlag getTueA() {
		return tueA;
	}

	public void setTueA(YesNoFlag tueA) {
		this.tueA = tueA;
	}

	public YesNoFlag getWedM() {
		return wedM;
	}

	public void setWedM(YesNoFlag wedM) {
		this.wedM = wedM;
	}

	public YesNoFlag getWedA() {
		return wedA;
	}

	public void setWedA(YesNoFlag wedA) {
		this.wedA = wedA;
	}

	public YesNoFlag getThuM() {
		return thuM;
	}

	public void setThuM(YesNoFlag thuM) {
		this.thuM = thuM;
	}

	public YesNoFlag getThuA() {
		return thuA;
	}

	public void setThuA(YesNoFlag thuA) {
		this.thuA = thuA;
	}

	public YesNoFlag getFriM() {
		return friM;
	}

	public void setFriM(YesNoFlag friM) {
		this.friM = friM;
	}

	public YesNoFlag getFriA() {
		return friA;
	}

	public void setFriA(YesNoFlag friA) {
		this.friA = friA;
	}

	public void setWeekId() {
		if(weekId == null || weekId == "") {
			Calendar cal = Calendar.getInstance();
			cal.setTime(new Date());
			Integer wkId = cal.get(Calendar.WEEK_OF_YEAR);
			setWeekId(wkId.toString() + '_' + cal.get(Calendar.YEAR));
		}
	}

}
