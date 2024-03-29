package hibernate;
// Generated Jul 8, 2013 10:32:10 AM by Hibernate Tools 3.2.1.GA


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * ChatPad generated by hbm2java
 */
@Entity
@Table(name="chat_pad"
    ,catalog="pathshala_db"
)
public class ChatPad  implements java.io.Serializable {


     private Integer chatPadId;
     private String chatPadName;
     private String chatPadDesc;

    public ChatPad() {
    }

    public ChatPad(String chatPadName, String chatPadDesc) {
       this.chatPadName = chatPadName;
       this.chatPadDesc = chatPadDesc;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="chat_pad_id", unique=true, nullable=false)
    public Integer getChatPadId() {
        return this.chatPadId;
    }
    
    public void setChatPadId(Integer chatPadId) {
        this.chatPadId = chatPadId;
    }
    
    @Column(name="chat_pad_name", length=45)
    public String getChatPadName() {
        return this.chatPadName;
    }
    
    public void setChatPadName(String chatPadName) {
        this.chatPadName = chatPadName;
    }
    
    @Column(name="chat_pad_desc", length=45)
    public String getChatPadDesc() {
        return this.chatPadDesc;
    }
    
    public void setChatPadDesc(String chatPadDesc) {
        this.chatPadDesc = chatPadDesc;
    }




}


