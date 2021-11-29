<%@ page import="at.fhj.ima.swenga_guestbook.models.GuestBookEntry" %>
<%@ page import="at.fhj.ima.swenga_guestbook.classes.GuestBookManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>The Guestbook</title>
    <script src="webjars/bootstrap/5.0.0-beta1/js/bootstrap.min.js"></script>
    <link rel='stylesheet' href='webjars/bootstrap/5.0.0-beta1/css/bootstrap.min.css'>
</head>
<body>
<div class="container">
<%
    GuestBookManager bookCtx = (GuestBookManager) request.getServletContext().getAttribute("book");
    GuestBookManager bookSession = (GuestBookManager) request.getSession(true).getAttribute("book");
%>
<h1>The Guestbook</h1>
<p>These are the message from our visitors</p>

<h2>ServletContext Book</h2>
<% if (bookCtx == null || bookCtx.isEmpty()) { %>
<p>Sorry, but there are no entries!</p>
<%
} else {
    for (GuestBookEntry entry : bookCtx.getEntries()) { %>
<div class="container">
    <div class="card">
        <div class="card-body">

            <h5 class="card-title">Title: <%=entry.getTitle()%></h5>
            <div class="card-text">
                <p>Name: <%=entry.getName()%></p>
                <p>Comment:</p>
                <p><%=entry.getComment()%></p>
            </div>
        </div>
        <div class="card-footer">
            <p>Created at: <%=entry.getAddedAt()%></p>
        </div>
    </div>
</div>
<%
        }
    }
%>

<h2>SessionContext Book</h2>
<%
    if (bookSession == null || bookSession.isEmpty()) { %>
<p>Sorry, but there are no entries!</p>
<%
} else {
    for (GuestBookEntry entry : bookSession.getEntries()) { %>
    <div class="container">
        <div class="card">
            <div class="card-body">

                <h5 class="card-title">Title: <%=entry.getTitle()%></h5>
                <div class="card-text">
                    <p>Name: <%=entry.getName()%></p>
                    <p>Comment:</p>
                    <p><%=entry.getComment()%></p>
                </div>
            </div>
            <div class="card-footer">
                <p>Created at: <%=entry.getAddedAt()%></p>
            </div>
        </div>
    </div>
<%
        }
    }
%>
    <a href="./index.jsp" class="btn btn-dark">back</a>
</div>
</body>
</html>