package team.DTO;

public class teamDTO {
	// ÆÀ Å×ÀÌºí 
	

	    // ÆÀ ¼ø¹ø 
	    private int teamSeq;

	    // ÆÀ ÀÌ¸§ 
	    private String teamName;

	    // ÆÀ ¼³¸í 
	    private String teamContent;

	    // µî·ÏÀÚ ¾ÆÀÌµð 
	    private String memId;

	    
	    
	    public teamDTO(int teamSeq, String teamName, String teamContent, String memId) {
			this.teamSeq = teamSeq;
			this.teamName = teamName;
			this.teamContent = teamContent;
			this.memId = memId;
		}

		public int getTeamSeq() {
	        return teamSeq;
	    }

	    public void setTeamSeq(int teamSeq) {
	        this.teamSeq = teamSeq;
	    }

	    public String getTeamName() {
	        return teamName;
	    }

	    public void setTeamName(String teamName) {
	        this.teamName = teamName;
	    }

	    public String getTeamContent() {
	        return teamContent;
	    }

	    public void setTeamContent(String teamContent) {
	        this.teamContent = teamContent;
	    }

	    public String getMemId() {
	        return memId;
	    }

	    public void setMemId(String memId) {
	        this.memId = memId;
	    }

	    
	
}
