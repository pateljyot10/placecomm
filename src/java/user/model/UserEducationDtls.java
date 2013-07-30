package user.model;
// Generated Jul 2, 2013 8:46:38 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * UserEducationDtls generated by hbm2java
 */
public class UserEducationDtls  implements java.io.Serializable {


     private Long userEducationId;
     private String schoolCollegeName;
     private String schoolCollegeCity;
     private Long schoolCollegeFromYear;
     private Long schoolCollegeToYear;
     private String specialization;
     private String graduationMasterTitle;
     private String majorSubject;
     private String otherMinorMajorSubject;
     private long createdUserId;
     private Date createdDate;
     private Long updatedUserId;
     private Date updatedDate;

    public UserEducationDtls() {
    }

	
    public UserEducationDtls(long createdUserId, Date createdDate) {
        this.createdUserId = createdUserId;
        this.createdDate = createdDate;
    }
    public UserEducationDtls(String schoolCollegeName, String schoolCollegeCity, Long schoolCollegeFromYear, Long schoolCollegeToYear, String specialization, String graduationMasterTitle, String majorSubject, String otherMinorMajorSubject, long createdUserId, Date createdDate, Long updatedUserId, Date updatedDate) {
       this.schoolCollegeName = schoolCollegeName;
       this.schoolCollegeCity = schoolCollegeCity;
       this.schoolCollegeFromYear = schoolCollegeFromYear;
       this.schoolCollegeToYear = schoolCollegeToYear;
       this.specialization = specialization;
       this.graduationMasterTitle = graduationMasterTitle;
       this.majorSubject = majorSubject;
       this.otherMinorMajorSubject = otherMinorMajorSubject;
       this.createdUserId = createdUserId;
       this.createdDate = createdDate;
       this.updatedUserId = updatedUserId;
       this.updatedDate = updatedDate;
    }
   
    public Long getUserEducationId() {
        return this.userEducationId;
    }
    
    public void setUserEducationId(Long userEducationId) {
        this.userEducationId = userEducationId;
    }
    public String getSchoolCollegeName() {
        return this.schoolCollegeName;
    }
    
    public void setSchoolCollegeName(String schoolCollegeName) {
        this.schoolCollegeName = schoolCollegeName;
    }
    public String getSchoolCollegeCity() {
        return this.schoolCollegeCity;
    }
    
    public void setSchoolCollegeCity(String schoolCollegeCity) {
        this.schoolCollegeCity = schoolCollegeCity;
    }
    public Long getSchoolCollegeFromYear() {
        return this.schoolCollegeFromYear;
    }
    
    public void setSchoolCollegeFromYear(Long schoolCollegeFromYear) {
        this.schoolCollegeFromYear = schoolCollegeFromYear;
    }
    public Long getSchoolCollegeToYear() {
        return this.schoolCollegeToYear;
    }
    
    public void setSchoolCollegeToYear(Long schoolCollegeToYear) {
        this.schoolCollegeToYear = schoolCollegeToYear;
    }
    public String getSpecialization() {
        return this.specialization;
    }
    
    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }
    public String getGraduationMasterTitle() {
        return this.graduationMasterTitle;
    }
    
    public void setGraduationMasterTitle(String graduationMasterTitle) {
        this.graduationMasterTitle = graduationMasterTitle;
    }
    public String getMajorSubject() {
        return this.majorSubject;
    }
    
    public void setMajorSubject(String majorSubject) {
        this.majorSubject = majorSubject;
    }
    public String getOtherMinorMajorSubject() {
        return this.otherMinorMajorSubject;
    }
    
    public void setOtherMinorMajorSubject(String otherMinorMajorSubject) {
        this.otherMinorMajorSubject = otherMinorMajorSubject;
    }
    public long getCreatedUserId() {
        return this.createdUserId;
    }
    
    public void setCreatedUserId(long createdUserId) {
        this.createdUserId = createdUserId;
    }
    public Date getCreatedDate() {
        return this.createdDate;
    }
    
    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }
    public Long getUpdatedUserId() {
        return this.updatedUserId;
    }
    
    public void setUpdatedUserId(Long updatedUserId) {
        this.updatedUserId = updatedUserId;
    }
    public Date getUpdatedDate() {
        return this.updatedDate;
    }
    
    public void setUpdatedDate(Date updatedDate) {
        this.updatedDate = updatedDate;
    }




}


