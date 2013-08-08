package org.bahmni.feed.openelis.feed.client;

import org.apache.log4j.Logger;
import org.bahmni.feed.openelis.AtomFeedProperties;
import org.bahmni.feed.openelis.feed.event.LabTestFeedEventWorker;
import org.ict4h.atomfeed.client.service.AtomFeedClient;
import org.quartz.DisallowConcurrentExecution;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

@DisallowConcurrentExecution
public class OpenERPLabTestFeedJob extends OpenERPFeedReaderJob {
    private static Logger logger = Logger.getLogger(OpenERPLabTestFeedJob.class);

    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        try {
            logger.info("Started");
            atomFeedClient.processEvents();
        } catch (Exception e) {
            logger.error("Failed", e);
        }
    }
}