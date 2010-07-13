.class public Lcom/lge/newbay/client/impl/Search;
.super Lcom/lge/newbay/client/impl/NewbayAPI;
.source "Search.java"

# interfaces
.implements Lcom/lge/newbay/client/ISearch;


# static fields
.field static final SEARCH_PARAM_DISPLAY_NAME:Ljava/lang/String; = "searchDisplayName"

.field static final SEARCH_PARAM_EMAIL:Ljava/lang/String; = "searchEmail"

.field static final SEARCH_PARAM_FIRST_LAST_NAME:Ljava/lang/String; = "searchFirstLastName"

.field static final SEARCH_PARAM_FIRST_NAME:Ljava/lang/String; = "searchFirstName"

.field static final SEARCH_PARAM_PHONE_NUMBER:Ljava/lang/String; = "searchPhoneNumber"

.field static final URI_SEARCH:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/search?pageNum={page.num}&pageSize={page.size}"

.field static final URI_SEARCH_ALL:Ljava/lang/String; = "/sng/user/{session.token}/snss/{sns.uid.array}/user/search?pageNum={page.num}&pageSize={page.size}"


# direct methods
.method public constructor <init>(Lcom/lge/newbay/client/impl/NewbayContext;)V
    .registers 2
    .parameter "connection"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    .line 40
    return-void
.end method

.method private search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;
    .registers 13
    .parameter "uri"
    .parameter "searchFirstLastName"
    .parameter "searchFirstName"
    .parameter "searchDisplayName"
    .parameter "searchEmail"
    .parameter "searchPhoneNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3d

    const/16 v4, 0x26

    .line 68
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, sb:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_1c

    .line 70
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "searchFirstLastName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    :cond_1c
    if-eqz p3, :cond_2f

    .line 73
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "searchFirstName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    :cond_2f
    if-eqz p4, :cond_42

    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "searchDisplayName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :cond_42
    if-eqz p5, :cond_55

    .line 79
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "searchEmail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_55
    if-eqz p6, :cond_68

    .line 82
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "searchPhoneNumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_68
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/atom+xml"

    invoke-virtual {p0, v2, v3}, Lcom/lge/newbay/client/impl/Search;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 85
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Search;->getHttpResponseAsAtomFeed(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public searchUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    .registers 16
    .parameter "snsId"
    .parameter "searchFirstLastName"
    .parameter "searchFirstName"
    .parameter "searchDisplayName"
    .parameter "searchEmail"
    .parameter "searchPhoneNumber"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 58
    const-string v0, "/sng/user/{session.token}/sns/{sns.uid}/user/search?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, uri:Ljava/lang/String;
    const-string v0, "{page.num}"

    invoke-static {p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 60
    const-string v0, "{page.size}"

    invoke-static {p8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 61
    invoke-direct/range {v0 .. v6}, Lcom/lge/newbay/client/impl/Search;->search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    return-object v0
.end method

.method public searchUser([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    .registers 16
    .parameter "snsIds"
    .parameter "searchFirstLastName"
    .parameter "searchFirstName"
    .parameter "searchDisplayName"
    .parameter "searchEmail"
    .parameter "searchPhoneNumber"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 47
    const-string v0, "/sng/user/{session.token}/snss/{sns.uid.array}/user/search?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid.array}"

    invoke-static {p1}, Lcom/lge/util/Util;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, uri:Ljava/lang/String;
    const-string v0, "{page.num}"

    invoke-static {p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v0, "{page.size}"

    invoke-static {p8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 50
    invoke-direct/range {v0 .. v6}, Lcom/lge/newbay/client/impl/Search;->search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    return-object v0
.end method
