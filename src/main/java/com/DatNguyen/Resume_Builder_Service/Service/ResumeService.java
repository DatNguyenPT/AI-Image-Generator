package com.DatNguyen.Resume_Builder_Service.Service;

import org.json.JSONObject;

import java.io.IOException;
import java.util.Map;

public interface ResumeService {

    Map<String, Object> generateResumeResponse(String userResumeDescription) throws IOException;
}