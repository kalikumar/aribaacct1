package example.nosql;


public class ViewPage   {
 
    private String projectName;
    private String projectId;
    private String projectType;
    private String client;
    private String startDate;
    private String endDate;
    private String headCount;
    private String uom;
    private String tcvValue;
    private String  industry;
    private String pal;
    

    
    public ViewPage(String industry,String pal,String projectId,String client,String projectName,String projectType,String startDate,String endDate,String headCount,String tcvValue ) 
    {
        this.projectName = projectName;
        this.projectId = projectId;
        this.projectType = projectType;
        this.client = client;
        this.startDate = startDate;
        this.endDate = endDate;
        this.headCount = headCount;
        this.uom = uom;
        this.tcvValue = tcvValue;
        this.industry=  industry ;
        this.pal = pal;
    }
 
    public String getProjectName() {
        return projectName;
    }
 
    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }
 
    public String getProjectId() {
        return projectId;
    }
 
    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }
public String getProjectType() {
	
    	
    	return projectType;
	}

	public void setProjectType(String projectType) {
		this.projectType = projectType;
	}

	public String getClient() {
		return client;
	}

	public void setClient(String client) {
		this.client = client;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getHeadCount() {
		return headCount;
	}

	public void setHeadCount(String headCount) {
		this.headCount = headCount;
	}

	public String getTcvValue() {
		return tcvValue;
	}

	public void setTcvValue(String tcvValue) {
		this.tcvValue = tcvValue;
	}
	public String getIndustry() {
		return industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getPal() {
		return  pal;
	}

	public void setPal(String tcvValue) {
		this.pal = pal;
	}
	
	
}