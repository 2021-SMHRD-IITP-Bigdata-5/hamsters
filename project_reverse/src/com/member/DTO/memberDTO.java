package com.member.DTO;

public class memberDTO {
	
	 // ȸ�� ���̵� 
    private String memId;

    // ȸ�� ��й�ȣ 
    private String memPw;

    // ȸ�� �̸� 
    private String memName;

    // ȸ�� �Ҽ�ȸ�� 
    private String memCompany;

    // ȸ�� �̸��� 
    private String memEmail;

    // ȸ�� ����ó 
    private String memPhone;

    // ȸ�� ���� 
    private String memStatus;

    // ������ ���� 
    private String adminYesno;
    
    

    public memberDTO(String memId, String memPw, String memName, String memCompany, String memEmail, String memPhone,
			String memStatus, String adminYesno) {
		super();
		this.memId = memId;
		this.memPw = memPw;
		this.memName = memName;
		this.memCompany = memCompany;
		this.memEmail = memEmail;
		this.memPhone = memPhone;
		this.memStatus = memStatus;
		this.adminYesno = adminYesno;
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


    public String getAdminYesno() {
        return adminYesno;
    }

    public void setAdminYesno(String adminYesno) {
        this.adminYesno = adminYesno;
    }

	
}
