SubProcessCallResult result = bpmClient.start()
        .subProcess(REGISTER_AGENT)
        .execute("James Bond", 7) // callable sub process input arguments 
        .result(); 

assertThat((String)result.param("agent")).isEqualTo("James Bond");
assertThat((Number)result.param("doubleZeroNumber")).isEqualTo(7);