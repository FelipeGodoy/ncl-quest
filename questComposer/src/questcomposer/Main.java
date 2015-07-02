package questcomposer;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author Felipe
 */
public class Main {

    static final String MODEL_FILE_NAME = "model\\model.ncl";
    static final String FILE_QUESTIONS_NAME = "questions.txt";
    static final String FILE_OUTPUT_NAME = "main.ncl";
    
    static Scanner modelFile;
    static Scanner questionsFile;
    static FileWriter fileOutput;
    
    static ArrayList<Question> questions;
    
    static int linksCount = 0;
    
    public static void main(String[] args) throws IOException  {
        try {
            setup();
            outputLinesFromModel(72);
            outputQuestions();
            outputLine("\t</body>");
            outputLine("</ncl>");
        }
        catch (Exception ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            closeFiles();
        }
    }
    
    static void outputQuestions() throws IOException{
        for(Question question : questions){
            outputLine("\t\t<media descriptor=\"dQuestion\" id=\""+question.name+"\" src=\""+question.path+"\" type=\"text/plain\">");
            outputLine("\t\t\t<property name=\"fontUri\" value=\"model\\vera.ttf\"></property>");
            outputLine("\t\t\t<property name=\"fontSize\" value=\"26\"></property>");
            outputLine("\t\t\t<property name=\"fontColor\" value=\"red\"></property>");
            outputLine("\t\t</media>");
            outputAnswers(question);
        }
        outputLink("onEndStart","video", "onEnd", questions.get(0).name, "start");
        for(int i =0; i < questions.size(); i++){
            Question question = questions.get(i);
            outputLink("onBeginStart",question.name, "onBegin", "answer", "start");
            if(i < questions.size() -1){
                Question nextQuestion = questions.get(i+1);
                outputLink("onEndStart", question.name, "onEnd", nextQuestion.name, "start"); 
            }
            outputLink("onEndStop", "answer", "onEnd", question.name, "stop");
            for(Answer answer : question.answers){
                outputLink("onBeginStart",question.name, "onBegin", answer.name, "start");
                outputLink("onEndStop",question.name, "onEnd", answer.name, "stop");
                outputLinkSelection(question ,answer);
            }
        }
    }
    
    static void outputAnswers(Question question) throws IOException{
        int count =1;
        for(Answer answer : question.answers){
            outputLine("\t\t<media descriptor=\"d"+(count++)+"\" id=\""+answer.name+"\" src=\""+answer.path+"\" type=\"text/plain\">");
            outputLine("\t\t\t<property name=\"fontUri\" value=\"vera.ttf\"></property>");
            outputLine("\t\t\t<property name=\"fontSize\" value=\"24\"></property>");
            outputLine("\t\t\t<property name=\"fontColor\" value=\"white\"></property>");
            outputLine("\t\t</media>");
        }
    }
    
    static void outputLink(String connector, String component1, String role1, String component2, String role2) throws IOException{
        outputLine("\t\t<link id=\"link"+(linksCount++)+"\" xconnector=\""+connector+"\">");
        outputLine("\t\t\t<bind component=\""+component1+"\" role=\""+role1+"\"></bind>");
        outputLine("\t\t\t<bind component=\""+component2+"\" role=\""+role2+"\"></bind>");
        outputLine("\t\t</link>");
    }
    
    static void outputLinkSelection(Question question ,Answer answer) throws IOException{
        outputLine("\t\t<link id=\"link"+(linksCount++)+"\" xconnector=\"onSelectionSetStop\">");
        outputLine("\t\t\t<bind component=\""+answer.name+"\" role=\"onSelection\"></bind>");
        outputLine("\t\t\t<bind component=\"answer\" interface=\"message\" role=\"set\">");
        outputLine("\t\t\t\t<bindParam name=\"var\" value=\""+question.contentForFile()+answer.contentForFile()+"\"></bindParam>");
        outputLine("\t\t\t</bind>");
        outputLine("\t\t\t<bind component=\"answer\" role=\"stop\"></bind>");
        outputLine("\t\t</link>");
    }
    
    static void outputLine(String line) throws IOException{
        fileOutput.write(line+"\n");
    }
    
    static void outputLinesFromModel(int lines) throws IOException{
        for(int i =0; i < lines; i++){
            fileOutput.write(modelFile.nextLine()+"\n");
        }
    }
    
    static void skipLinesFromModel(int lines) throws IOException{
        for(int i =0; i < lines; i++){
            modelFile.nextLine();
        }
    }
    
    static void setup()throws FileNotFoundException, IOException{
        modelFile = new Scanner(new File(MODEL_FILE_NAME));
        questionsFile = new Scanner(new File(FILE_QUESTIONS_NAME));
        File file =new File(FILE_OUTPUT_NAME);
        file.delete();
        file.createNewFile();
        fileOutput = new FileWriter(file);
        setupQuestions();
    }
    
    static void closeFiles() throws IOException{
        modelFile.close();
        questionsFile.close();
        fileOutput.close();
    }
    
    static void setupQuestions() throws IOException{
        questions = new ArrayList<>();
        int questionsCount =0, answersCount =0;
        while(questionsFile.hasNextLine()){
            String[] line = questionsFile.nextLine().split("#");
            Question q = new Question(line[0], questionsCount++);
            for(int i =1; i < line.length; i++){
                Answer a = new Answer(line[i], answersCount++);
                q.answers.add(a);
            }
            questions.add(q);
        }
    }
    
}
