package us.mn.state.health.lims.dashboard.action;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;
import org.bahmni.feed.openelis.ObjectMapperRepository;
import org.json.simple.JSONObject;
import us.mn.state.health.lims.common.action.BaseAction;
import us.mn.state.health.lims.dashboard.dao.OrderListDAO;
import us.mn.state.health.lims.dashboard.daoimpl.OrderListDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DashboardAction extends BaseAction {
    private OrderListDAO orderListDAO = new OrderListDAOImpl();

    public DashboardAction() {
    }

    @Override
    protected ActionForward performAction(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        DynaActionForm dynaForm = (DynaActionForm) form;

        String escapedTodayOrderListJson = asJson(orderListDAO.getAllToday());
        String escapedBacklogOrderListJson = asJson(orderListDAO.getAllPendingBeforeToday());

        dynaForm.set("todayOrderList", escapedTodayOrderListJson);
        dynaForm.set("backlogOrderList", escapedBacklogOrderListJson);

        return mapping.findForward("success");
    }

    @Override
    protected String getPageTitleKey() {
        return "Dashboard";
    }

    @Override
    protected String getPageSubtitleKey() {
        return "Dashboard";
    }

    private String asJson(Object o) throws IOException {
        String listJson = ObjectMapperRepository.objectMapper.writeValueAsString(o);
        return JSONObject.escape(listJson);
    }
}
