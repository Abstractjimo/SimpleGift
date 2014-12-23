package simplegift.json;

import java.io.FileWriter;
import java.io.IOException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class WriteIntoJsonFile {

	public static void writeIntoJsonFile(String[] url) {
		JSONObject obj = new JSONObject();
		obj.put("total", 123);

		JSONArray list = new JSONArray();

		for (int i = 0; i < url.length; ++i) {
			JSONObject image = new JSONObject();
			image.put("image", url[i]);
			list.add(image);
		}

		obj.put("result", list);

		try {

			FileWriter file = new FileWriter("WebContent/data/test.json");
			file.write(obj.toJSONString());
			file.flush();
			file.close();

		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.print(obj);

	}

	public static void main(String[] args) {
		String[] url = { "index.html", "giftboard.html", "www.google.com" };
		writeIntoJsonFile(url);
		System.out.println("hello world");

	}
}
