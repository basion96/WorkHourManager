package HourManager;

import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;

public class DaysHours {

    private String date, startTime, finishTime;
    private int breakTime;

    public DaysHours(String date, String startTime, String finishTime, int breakTime){
        this.date = date;
        this.startTime = startTime;
        this.finishTime = finishTime;
        this.breakTime = breakTime;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getFinishTime() {
        return finishTime;
    }

    public void setFinishTime(String finishTime) {
        this.finishTime = finishTime;
    }

    public int getBreakTime() {
        return breakTime;
    }

    public void setBreakTime(int breakTime) {
        this.breakTime = breakTime;
    }

    public String getDay(){
        int year = Integer.parseInt(date.substring(date.lastIndexOf("/"))),
                month = Integer.parseInt(date.substring(date.indexOf("/"))),
                day = Integer.parseInt(date.substring(0, date.lastIndexOf("/")));

        Calendar date = Calendar.getInstance();
        date.set(year, month, day);

        String daySTR = "";
        switch (date.get(Calendar.DAY_OF_WEEK)){
            case 1: daySTR = "Sunday";
                break;
            case 2: daySTR = "Monday";
                break;
            case 3: daySTR = "Tuesday";
                break;
            case 4: daySTR = "Wednesday";
                break;
            case 5: daySTR = "Thursday";
                break;
            case 6: daySTR = "Friday";
                break;
            case 7: daySTR = "Saturday";
                break;
        }
        return daySTR;
    }
}
