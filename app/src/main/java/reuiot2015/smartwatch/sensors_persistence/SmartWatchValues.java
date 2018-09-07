package reuiot2015.smartwatch.sensors_persistence;

import org.tensorflow.contrib.android.TensorFlowInferenceInterface;

import java.io.File;

/** Some default persistence values and methods for use by SmartWatch. */
public class SmartWatchValues {
    public static final String ALBUM_NAME = "SmartWatch Samples";
    //Number of data per prediction. Related to prediction interval.
    public static final int TRIGGER = 125;
    //unit: millisecond
    public static final int WINDOW_SIZE = 750;
    //unit: (time/second)
    public static final float SAMPLE_FREQUENCY = 31.25f;
    //How many data are compared at once
    public static final int DATA_PER_WINDOW = 45;
    //How many rounds of predictions for rewriting of default.csv to happen
    public static final int REWRITE_INTERVAL = 10;

    public static final int OVERLAP_RADIUS = 3;

    public static final int THRESHOLD_LOW = 3; //Thresholds for heuristic function
    public static final int THRESHOLD_HIGH = 50;

    public static String MODEL_NAME = "frozen_Model_Best_0.3thresh_45steps.pb";
    public static String THRESHOLD_VALUE = "0.3f";
    public static String STEPS = "45";

    public static TensorFlowInferenceInterface inferenceInterface;

}
