import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;

/**
 * Created by Administrator on 2015/11/28.
 */
public class Spider {

    private static final String URL = "http://.cn/test";
    private static final String AUDIO_HOST = "http://audio..cn/";

    public static void main(String[] args) throws IOException {
        Document document = Jsoup.connect(URL)
                .header("User-Agent", "Mozilla")
                .get();
        Elements elements = document.select("h1[class=keyword]");
        String english = elements.first().text();
        System.out.println(english);
        elements.clear();

        elements = document.select("div[class=phonetic] > span");
        for (Element element : elements) {
            System.out.println(element.select("bdo").text());
            for (Element i : element.select("i")) {
                System.out.println(AUDIO_HOST + i.attr("naudio"));
            }
        }
        elements.clear();

        elements = document.select("ul[class=dict-basic-ul] li:not([style])");
        for (Element element : elements) {
            System.out.println(element.select("span").text());
            System.out.println(element.select("strong").text());
        }
        elements.clear();

        elements = document.select("div [class=layout sort] ol[slider=2]");
        for (Element element : elements) {
            System.out.println(element.previousElementSibling().text());
            for (Element li : element.select("li")) {
                String chinese = li.select("br").first().nextSibling().toString().trim();
                System.out.println(li.text().replaceAll(chinese, "").trim());
                System.out.println(chinese);
                for (Element i : li.select("i")) {
                    System.out.println(AUDIO_HOST + i.attr("naudio"));
                }
            }
        }
        elements.clear();

        document.empty();
    }
}
