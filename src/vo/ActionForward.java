package vo;
//而⑦듃濡ㅻ윭�뿉�꽌 鍮꾩��땲�뒪 濡쒖쭅�쓣 泥섎━�븯怨� 酉� �럹�씠吏�濡� �룷�썙�뵫�븷 �븣 �룷�썙�뵫�뿉 �븘�슂�븳 �젙蹂대�� ���옣�븯�뒗 �겢�옒�뒪
public class ActionForward {
	
	private String path=null;
	private boolean redirect;
	private boolean isRedirect=false;

	public String getPath() {
		return path;
	}
	
	public void setPath(String path) {
		this.path = path;
	}
	
	public boolean isRedirect() {
		return isRedirect;
	}
	
	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}
	
	public ActionForward(String path, boolean redirect) {
		this.path = path;
		this.redirect = redirect;
	}
	
}