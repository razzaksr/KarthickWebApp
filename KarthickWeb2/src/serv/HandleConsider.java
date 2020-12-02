package serv;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class HandleConsider extends TagSupport
{
	private int min,max;
	private List<Karthi> tmp;
	@Override
	public int doAfterBody() throws JspException {
		// TODO Auto-generated method stub
		tmp=DbAPI.filter(min, max);
		return EVAL_BODY_INCLUDE;
	}

	@Override
	public int doEndTag() throws JspException {
		// TODO Auto-generated method stub
		JspWriter writer=pageContext.getOut();
		try {
			writer.write(tmp.toString()+"<br>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SKIP_PAGE;
	}

	@Override
	public int doStartTag() throws JspException {
		// TODO Auto-generated method stub
		return EVAL_BODY_INCLUDE;
	}

	public void setMin(int min) {
		this.min = min;
	}	
	public void setMax(int max) {
		this.max = max;
	}
}
