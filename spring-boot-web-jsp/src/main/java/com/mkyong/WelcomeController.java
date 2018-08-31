package com.mkyong;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.websocket.server.PathParam;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class WelcomeController {

	final static Logger logger = Logger.getLogger(WelcomeController.class);
	
	@RequestMapping("/")
	public String welcome() {
		return "welcome";
	}
	@RequestMapping(value="/comparefile" , method=RequestMethod.POST)
	public String parseAndCompare(@RequestParam("file1") MultipartFile file1,
			@RequestParam("file2") MultipartFile file2, ModelMap model) throws IOException{
		BufferedReader br;
		BufferedReader br1;
		List<String> result = new ArrayList<>();
		List<String> result1 = new ArrayList<>();
		try {
			String line;
			InputStream is = file1.getInputStream();
			InputStream is1 = file2.getInputStream();
			br = new BufferedReader(new InputStreamReader(is));
			br1 = new BufferedReader(new InputStreamReader(is1));
			while ((line = br.readLine()) != null) {
				result.add(line);
			}
			while ((line = br1.readLine()) != null) {
				result1.add(line);
			}
						
			model.put("result", result);
			model.put("result1", result1 );
			
			List<String> tpList1 = new ArrayList<String>(result);
	        List<String> tpList2 = new ArrayList<String>(result1);
	     
	        tpList1.removeAll(result1);
	        tpList2.removeAll(result);
	        model.put("tpList1", tpList1);
			model.put("tpList2", tpList2 );
			

			if (result.containsAll(result1)) {
				System.out.println("No difference between two files");
			}  
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "welcome";
	} 
}