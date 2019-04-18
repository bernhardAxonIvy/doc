import java.io.IOException;
import java.security.Principal;

import javax.servlet.ServletException;

import org.apache.catalina.connector.Request;
import org.apache.catalina.connector.Response;
import org.apache.catalina.valves.ValveBase;
import org.apache.commons.lang3.StringUtils;

public class AuthValve extends ValveBase
{
  @Override
  public void invoke(Request request, Response response) throws IOException, ServletException
  {
    String userName = getUserNameFromRequest(request);
    if (StringUtils.isNotBlank(userName))
    {
      Principal userPrincipal = createUserPrincipalWith(userName);
      request.setUserPrincipal(userPrincipal);
    }
    getNext().invoke(request, response);
  }
 
  /**
   * Finds out which user was authenticated by an external instance
   * @param request
   * @return user name
   */
  private String getUserNameFromRequest(Request request)
  {
    // Example implementation:
    // Gets the user name from the HTTP Header field User.
    // Has to be changed depending on the protocol or product that you are using
    String userName = request.getHeader("User");
    return userName;
  }
 
  private Principal createUserPrincipalWith(String userName)
  {
    return new UserPrincipal(userName);
  }

  private static class UserPrincipal implements Principal
  {
    private String userName;
 
    private UserPrincipal(String userName)
    {
      this.userName = userName;
    }
 
    @Override
    public String getName()
    {
      return userName;
    }
  }
}