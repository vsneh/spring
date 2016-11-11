
package controllers;


import java.util.ArrayList;
import model.ProfileBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.util.List;
import org.springframework.web.bind.annotation.ModelAttribute;


@Controller
public class HelloWorldController {
 
    @RequestMapping(value="/index.htm",method = RequestMethod.GET)
    public String getClientProfile(ModelMap model) {
        
        model.put("profileBean", new ProfileBean()); // put profileBean into the model so that it is available in the view 
        
        List<String> industriesList = new ArrayList();
        industriesList.add("Education");
        industriesList.add("Financial");
        industriesList.add("Retail");
        industriesList.add("Entertainment");
        model.put("industriesList", industriesList);
        
        List<String> interestList = new ArrayList();
        interestList.add("Travel");
        interestList.add("Reading");
        interestList.add("Programming");
        model.put("interestList", interestList);
       
        List<String> position = new ArrayList();
        position.add("CEO");
        position.add("Java Developer");
        position.add("Professor");
        model.put("position", position);
        
                
        
        return "index";
    }
    
    @RequestMapping(value="/response.htm",method = RequestMethod.POST)
    public String processClientProfile(@ModelAttribute("profileBean") ProfileBean profile,
            ModelMap model) {
         
        // TO-DO: Note that the use of the @ModelAttribute annotation above allows for the 
        // profile model to be passed to this method and thus the method can start to process info
        // and prepare a response. Do this: uncomment the line below and examine the object profile.
        // What methods are available on profile?
        
        // profile.xxx
        
        String resultStr = "";
        
        // TO-DO: Prepare the resultStr such that it produces the same output that you had in an earlier assignment.
        
        resultStr += "Our people will contact your people ASAP. Thanks for contacting us!";
       
        model.put("response", resultStr);
        return "response";
    }
    
}