package at.fhj.ima.swenga_guestbook.controller

import javax.servlet.annotation.WebServlet
import javax.servlet.http.HttpServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

import at.fhj.ima.swenga_guestbook.classes.GuestBookManager
import at.fhj.ima.swenga_guestbook.models.GuestBookEntry

@WebServlet(name = "book", value = ["/book"])
class GuestBookServlet: HttpServlet() {

    override fun doGet(req: HttpServletRequest, resp: HttpServletResponse) {
        req.getRequestDispatcher("/show.jsp").forward(req,resp)
    }

    override fun doPost(req: HttpServletRequest, resp: HttpServletResponse) {
        val gBMContext = servletContext.getAttribute("book") as? GuestBookManager ?: GuestBookManager()
        val gBMSession = req.getSession(true).getAttribute("book") as? GuestBookManager ?: GuestBookManager()

        servletContext.setAttribute("book", gBMContext)
        req.session.setAttribute("book", gBMSession)

        val name = req.getParameter("name")
        val comment = req.getParameter("comment")
        val title = req.getParameter("title")

        if (!name.isNullOrEmpty() and !comment.isNullOrEmpty() and !title.isNullOrEmpty()) {
            val x = GuestBookEntry(title, name, comment)
            gBMContext.add(x)
            gBMSession.add(x)
        }
        doGet(req,resp)
    }
}