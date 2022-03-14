package kr.ac.kopo.controller;

//네이버 검색 API 예제 - blog 검색
import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.ac.kopo.model.News;

@Controller
public class ApiExamSearchBlogController {

	@GetMapping("/searchNews")
	public String search(Model model, String keyword) {
		
		 String clientId = "l2fy9TUiFsAiFC6k1uIt"; //애플리케이션 클라이언트 아이디값"
	     String clientSecret = "kKINwY6A1e"; //애플리케이션 클라이언트 시크릿값"

	     String text = null;
	     try {
	         text = URLEncoder.encode(keyword, "UTF-8");
	     } catch (UnsupportedEncodingException e) {
	         throw new RuntimeException("검색어 인코딩 실패",e);
	     }

	     String apiURL = "https://openapi.naver.com/v1/search/news.json?query=" + text;    // json 결과
	     //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // xml 결과

	     Map<String, String> requestHeaders = new HashMap<>();
	     requestHeaders.put("X-Naver-Client-Id", clientId);
	     requestHeaders.put("X-Naver-Client-Secret", clientSecret);
	     String responseBody = get(apiURL,requestHeaders);

	     System.out.println(responseBody);
	     ObjectMapper mapper = new ObjectMapper();
	     News news;
		try {			
			news = mapper.readValue(responseBody, News.class);
			System.out.println(news);
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     
		model.addAttribute("responseBody",responseBody);
		return "result";
	}

 private static String get(String apiUrl, Map<String, String> requestHeaders){
     HttpURLConnection con = connect(apiUrl);
     try {
         con.setRequestMethod("GET");
         for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
             con.setRequestProperty(header.getKey(), header.getValue());
         }

         int responseCode = con.getResponseCode();
         if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
             return readBody(con.getInputStream());
         } else { // 에러 발생
             return readBody(con.getErrorStream());
         }
     } catch (IOException e) {
         throw new RuntimeException("API 요청과 응답 실패", e);
     } finally {
         con.disconnect();
     }
 }

 private static HttpURLConnection connect(String apiUrl){
     try {
         URL url = new URL(apiUrl);
         return (HttpURLConnection)url.openConnection();
     } catch (MalformedURLException e) {
         throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
     } catch (IOException e) {
         throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
     }
 }

 private static String readBody(InputStream body){
     InputStreamReader streamReader = new InputStreamReader(body);

     try (BufferedReader lineReader = new BufferedReader(streamReader)) {
         StringBuilder responseBody = new StringBuilder();

         String line;
         while ((line = lineReader.readLine()) != null) {
             responseBody.append(line);
         }

         return responseBody.toString();
     } catch (IOException e) {
         throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
     }
 }
 
}
