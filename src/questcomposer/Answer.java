package questcomposer;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

/**
 *
 * @author Felipe
 */
public class Answer {
    public String content;
    public String path;
    public String name;

    public Answer(String content, int count) throws IOException {
        this.content = content;
        this.path = "answers\\answer"+count+".txt";
        this.name = "answer"+count;
        this.setupFile(path);
    }
    
    public String contentForFile(){
        return ("R: "+content).replaceAll(" ", "_");
    }
    
    private void setupFile(String s) throws IOException{
        File oldFile = new File(s);
        oldFile.delete();
        oldFile.createNewFile();
        FileWriter file = new FileWriter(oldFile);
        file.write(content);
        file.close();
    }
    
}
