package org.sefglobal.core.partnership.service.api;

import org.sefglobal.core.partnership.beans.Event;
import org.sefglobal.core.partnership.dao.EventDAO;
import org.sefglobal.core.partnership.exception.PartnershipAPIException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class EventManagementAPI {
    @Autowired
    private EventDAO eventDAO;

    @GetMapping("/events")
    public List<Event> getAllEvents(){
        return eventDAO.getAllEvents();
    }

    @PostMapping("/events")
    public Event addEvent(@RequestBody Event event) throws PartnershipAPIException {
        return eventDAO.addEvent(event);
    }
}
