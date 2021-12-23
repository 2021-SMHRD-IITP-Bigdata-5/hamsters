package com.member.DTO;

public class memberDTO {
	
	 // 회원 아이디 
    private String memId;

    // 회원 비밀번호 
    private String memPw;

    // 회원 이름 
    private String memName;

    // 회원 소속회사 
    private String memCompany;

    // 회원 이메일 
    private String memEmail;

    // 회원 연락처 
    private String memPhone;

    // 회원 상태 
    private String memStatus;

    
    

    public memberDTO(String memId, String memPw, String memEmail, String memPhone) {
		this.memId = memId;
		this.memPw = memPw;
		this.memEmail = memEmail;
		this.memPhone = memPhone;
	}

	

	public memberDTO(String memId, String memPw, String memName, String memCompany, String memEmail, String memPhone,
			String memStatus) {
		super();
		this.memId = memId;
		this.memPw = memPw;
		this.memName = memName;
		this.memCompany = memCompany;
		this.memEmail = memEmail;
		this.memPhone = memPhone;
		this.memStatus = memStatus;
	}
    



	public memberDTO(String memId, String memPw) {
		super();
		this.memId = memId;
		this.memPw = memPw;
	}

	public String getMemId() {
        return memId;
    }

    public void setMemId(String memId) {
        this.memId = memId;
    }

    public String getMemPw() {
        return memPw;
    }

    public void setMemPw(String memPw) {
        this.memPw = memPw;
    }

    public String getMemName() {
        return memName;
    }

    public void setMemName(String memName) {
        this.memName = memName;
    }

    public String getMemCompany() {
        return memCompany;
    }

    public void setMemCompany(String memCompany) {
        this.memCompany = memCompany;
    }

    public String getMemEmail() {
        return memEmail;
    }

    public void setMemEmail(String memEmail) {
        this.memEmail = memEmail;
    }

    public String getMemPhone() {
        return memPhone;
    }

    public void setMemPhone(String memPhone) {
        this.memPhone = memPhone;
    }

    public String getMemStatus() {
        return memStatus;
    }

    public void setMemStatus(String memStatus) {
        this.memStatus = memStatus;
    }



	
}
