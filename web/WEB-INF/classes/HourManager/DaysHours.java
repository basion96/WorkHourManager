package HourManager;

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
}
