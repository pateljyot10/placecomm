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
 * QzUsers generated by hbm2java
 */
@Entity
@Table(name="qz_users"
    ,catalog="pathshala_db"
)
public class QzUsers  implements java.io.Serializable {


     private Integer userId;
     private String username;
     private String email;
     private String password;
     private Date lastLog;
     private String ipAddress;

    public QzUsers() {
    }

    public QzUsers(String username, String email, String password, Date lastLog, String ipAddress) {
       this.username = username;
       this.email = email;
       this.password = password;
       this.lastLog = lastLog;
       this.ipAddress = ipAddress;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="user_id", unique=true, nullable=false)
    public Integer getUserId() {
        return this.userId;
    }
    
    public void setUserId(Integer userId) {
        this.userId = userId;
    }
    
    @Column(name="username", length=100)
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    
    @Column(name="email", length=150)
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    @Column(name="password", length=200)
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="last_log", length=19)
    public Date getLastLog() {
        return this.lastLog;
    }
    
    public void setLastLog(Date lastLog) {
        this.lastLog = lastLog;
    }
    
    @Column(name="ip_address", length=100)
    public String getIpAddress() {
        return this.ipAddress;
    }
    
    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }




}


