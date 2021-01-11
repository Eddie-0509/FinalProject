package tw.com.uyayi.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "comments")
public class Comments {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int commentPkId;
	private short rate;
	private String commentContext;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "appointmentPkId")
	@MapsId
	private Appointment appointment;

	public Comments() {
		// TODO Auto-generated constructor stub
	}

	public int getCommentPkId() {
		return commentPkId;
	}

	public void setCommentPkId(int commentPkId) {
		this.commentPkId = commentPkId;
	}

	public short getRate() {
		return rate;
	}

	public void setRate(short rate) {
		this.rate = rate;
	}

	public String getCommentContext() {
		return commentContext;
	}

	public void setCommentContext(String commentContext) {
		this.commentContext = commentContext;
	}

	public Appointment getAppointment() {
		return appointment;
	}

	public void setAppointment(Appointment appointment) {
		this.appointment = appointment;
	}

}
