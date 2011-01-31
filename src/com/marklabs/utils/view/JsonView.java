package com.marklabs.utils.view;

import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.web.servlet.View;

public class JsonView implements View {

    private static final String DEFAULT_JSON_CONTENT_TYPE = "application/json";
    private static final String DEFAULT_JAVASCRIPT_TYPE = "text/javascript";

    private JSONObject jsonObject;

    public JsonView(JSONObject jsonObject) {
        this.jsonObject = jsonObject;
    }

    public JsonView() {
        this.jsonObject = null;
    }

    public String getContentType() {
        return DEFAULT_JSON_CONTENT_TYPE;
    }

    public void render(Map model, HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        if (this.jsonObject == null) {
            this.jsonObject = fromMap(model);
        }

        boolean scriptTag = false;
        String cb = request.getParameter("callback");
        if (cb != null) {
            scriptTag = true;
            response.setContentType(DEFAULT_JAVASCRIPT_TYPE);
        } else {
            response.setContentType(DEFAULT_JSON_CONTENT_TYPE);
        }

        PrintWriter out = response.getWriter();
        if (scriptTag) {
            out.write(cb + "(");
        }
        out.write(this.jsonObject.toString());
        if (scriptTag) {
            out.write(");");
        }
    }

    /**
     * Utility method to read data from model and put it into an JsonObject
     * @param model
     * @return
     */
    public static JSONObject fromMap(Map model) {
        JSONObject jsonObject = new JSONObject();

        try {
            Iterator ite = model.keySet().iterator();
            while (ite.hasNext()) {

                // Key should always be String
                String key = (String) ite.next();                
                jsonObject.put(key, model.get(key));
            }
        } catch (Exception e) {
            System.out.println("call fromMap failed ");
            System.out.println("Error Message"+e.getMessage());
            e.printStackTrace();
        }

        return jsonObject;
    }

}
