<<<<<<< HEAD
<h1>Edit an Article</h1>

<form action="/articles/<%= @article.id %>" method="POST">
  <input id="hidden" type="hidden" name="_method" value="PATCH">
    <p>Title: <input type="text" name="title" value="<%= @article.title %>"></p>
    <p>Content: <textarea name="content"><%= @article.content %></textarea></p>
    <input type="submit" id="submit"/>
=======
<h1>Please edit your article here </h1>

<form action="/articles/<%= @article.id %>" method="post">
    <input id="hidden" type="hidden" name="_method" value="patch">
    <input id="title" type="title" name="title" value=<%= @article.title%> >
    <input id="content" type="content" name="content" value=<%= @article.content%> >
  <input type ="submit" value = "submit" id = "submit">
>>>>>>> c41125ab6005dd263a91ae3feb7184e7ca661344
</form>