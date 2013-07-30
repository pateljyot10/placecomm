package hibernate;
// Generated Jul 8, 2013 10:32:10 AM by Hibernate Tools 3.2.1.GA


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * QzQuizes generated by hbm2java
 */
@Entity
@Table(name="qz_quizes"
    ,catalog="pathshala_db"
)
public class QzQuizes  implements java.io.Serializable {


     private Integer id;
     private int qzUserId;
     private String quizName;
     private String quizDesc;
     private String quizScope;
     private String quizSubject;
     private Date createdOn;
     private String createdBy;
     private String status;
     private String finalStatus;

    public QzQuizes() {
    }

	
    public QzQuizes(int qzUserId, Date createdOn, String createdBy, String status, String finalStatus) {
        this.qzUserId = qzUserId;
        this.createdOn = createdOn;
        this.createdBy = createdBy;
        this.status = status;
        this.finalStatus = finalStatus;
    }
    public QzQuizes(int qzUserId, String quizName, String quizDesc, String quizScope, String quizSubject, Date createdOn, String createdBy, String status, String finalStatus) {
       this.qzUserId = qzUserId;
       this.quizName = quizName;
       this.quizDesc = quizDesc;
       this.quizScope = quizScope;
       this.quizSubject = quizSubject;
       this.createdOn = createdOn;
       this.createdBy = createdBy;
       this.status = status;
       this.finalStatus = finalStatus;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="id", unique=true, nullable=false)
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
    @Column(name="qz_userId", nullable=false)
    public int getQzUserId() {
        return this.qzUserId;
    }
    
    public void setQzUserId(int qzUserId) {
        this.qzUserId = qzUserId;
    }
    
    @Column(name="quiz_name", length=100)
    public String getQuizName() {
        return this.quizName;
    }
    
    public void setQuizName(String quizName) {
        this.quizName = quizName;
    }
    
    @Column(name="quiz_desc", length=80)
    public String getQuizDesc() {
        return this.quizDesc;
    }
    
    public void setQuizDesc(String quizDesc) {
        this.quizDesc = quizDesc;
    }
    
    @Column(name="quiz_scope", length=20)
    public String getQuizScope() {
        return this.quizScope;
    }
    
    public void setQuizScope(String quizScope) {
        this.quizScope = quizScope;
    }
    
    @Column(name="quiz_subject", length=50)
    public String getQuizSubject() {
        return this.quizSubject;
    }
    
    public void setQuizSubject(String quizSubject) {
        this.quizSubject = quizSubject;
    }
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="created_on", nullable=false, length=19)
    public Date getCreatedOn() {
        return this.createdOn;
    }
    
    public void setCreatedOn(Date createdOn) {
        this.createdOn = createdOn;
    }
    
    @Column(name="created_by", nullable=false, length=100)
    public String getCreatedBy() {
        return this.createdBy;
    }
    
    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }
    
    @Column(name="status", nullable=false, length=12)
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    
    @Column(name="final_status", nullable=false, length=30)
    public String getFinalStatus() {
        return this.finalStatus;
    }
    
    public void setFinalStatus(String finalStatus) {
        this.finalStatus = finalStatus;
    }




}


