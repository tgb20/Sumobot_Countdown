class Timer {

  float currTimeMillis;
  float totalTimeMillis;
  boolean isStarted;

  //Default Constructor: Assumes the Timer will run for 1000 milliseconds
  Timer()
  {
    this(1);
  }

  //Constructor: accepts the running time of the Timer in seconds.
  Timer(int timeInSeconds) 
  {
    setTime(timeInSeconds);
    isStarted = false;
  }

  //Begins the Timer countdown
  void start() 
  {
    currTimeMillis = millis(); 
    isStarted = true;
  }

  //Changes the duration of the timer
  void setTime(float timeInSeconds)
  {
    totalTimeMillis = timeInSeconds * 1000;
    isStarted = false;
  }

  //Returns true of the Timer has finished running
  //If the Timer has not been started or has not finished, it will return false
  boolean isFinished() 
  { 
    //calculate ellapsed time
    float ellapsed = millis() - currTimeMillis;
    //if the timer was running and enough time has passed, return true
    if (isStarted && ellapsed >= totalTimeMillis)
    {
      isStarted = false;
      return true;
    }
    return false;
  }

  //Get the remaining time in seconds.
  //Returns Timer duration if the timer has not been started yet.
  float getTimeSeconds()
  {
    if (!isStarted)
      return getDurationSeconds();
    float ellapsed = millis() - currTimeMillis;
    return totalTimeMillis / 1000 - ellapsed;
  }

  //Get the remaining time in milliseconds.
  //Returns duration if the timer has not been started yet.
  float getTimeMilliseconds()
  {
    if (!isStarted)
      return getDurationMillis();
    float ellapsed = millis() - currTimeMillis;
    return totalTimeMillis - ellapsed;
  }

  //get amount of time Timer will run in seconds
  float getDurationSeconds()
  {
    return totalTimeMillis / 1000;
  }

  //get amount of time Timer will run in milliseconds
  float getDurationMillis()
  {
    return totalTimeMillis;
  }
}
