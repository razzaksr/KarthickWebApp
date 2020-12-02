package serv;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class HandleNamakkal extends TagSupport
{
	
	@Override
	public int doStartTag() throws JspException 
	{
		JspWriter writer=pageContext.getOut();
		try {
			writer.write(DbAPI.list().toString()+"<br>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SKIP_BODY;
	}
}
