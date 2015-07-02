
package questcomposer;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

/**
 * @author Felipe
 */
public class Question {
    public String content;
    public String path;
    public String name;
    public ArrayList<Answer> answers;

    public Question(String content, int count) throws IOException {
        this.content = content;
        this.path = "questions\\question"+count+".txt";
        this.name = "question"+count;
        this.answers = new ArrayList<>();
        this.setupFile(path);
    }
    
    public String contentForFile(){
        return ("P: "+content).replaceAll(" ", "_")+"|";
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
