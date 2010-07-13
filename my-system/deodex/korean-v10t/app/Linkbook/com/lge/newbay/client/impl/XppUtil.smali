.class public Lcom/lge/newbay/client/impl/XppUtil;
.super Ljava/lang/Object;
.source "XppUtil.java"


# static fields
.field static pf:Lcom/lge/feed/parser/xmlpull/ProcessorFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    invoke-static {}, Lcom/lge/feed/parser/xmlpull/ProcessorFactory;->getInstance()Lcom/lge/feed/parser/xmlpull/ProcessorFactory;

    move-result-object v0

    sput-object v0, Lcom/lge/newbay/client/impl/XppUtil;->pf:Lcom/lge/feed/parser/xmlpull/ProcessorFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, eventType:I
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    .line 114
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 115
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 118
    :cond_f
    return-void
.end method

.method public static findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;
    .registers 7
    .parameter "feed"
    .parameter "rel"

    .prologue
    .line 175
    if-eqz p0, :cond_24

    .line 176
    invoke-virtual {p0}, Lcom/lge/feed/atom/AtomFeed;->getOtherLinks()Ljava/util/List;

    move-result-object v3

    .line 177
    .local v3, links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    if-eqz v3, :cond_24

    .line 178
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 179
    .local v1, l:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v1, :cond_24

    .line 180
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/feed/atom/Link;

    .line 181
    .local v2, link:Lcom/lge/feed/atom/Link;
    invoke-virtual {v2}, Lcom/lge/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object v4, v2

    .line 187
    .end local v0           #i:I
    .end local v1           #l:I
    .end local v2           #link:Lcom/lge/feed/atom/Link;
    .end local v3           #links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    :goto_20
    return-object v4

    .line 179
    .restart local v0       #i:I
    .restart local v1       #l:I
    .restart local v2       #link:Lcom/lge/feed/atom/Link;
    .restart local v3       #links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 187
    .end local v0           #i:I
    .end local v1           #l:I
    .end local v2           #link:Lcom/lge/feed/atom/Link;
    .end local v3           #links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    :cond_24
    const/4 v4, 0x0

    goto :goto_20
.end method

.method public static findLink(Lcom/lge/feed/atom/Entry;Ljava/lang/String;)Lcom/lge/feed/atom/Link;
    .registers 7
    .parameter "entry"
    .parameter "rel"

    .prologue
    .line 197
    if-eqz p0, :cond_24

    .line 198
    invoke-virtual {p0}, Lcom/lge/feed/atom/Entry;->getOtherLinks()Ljava/util/List;

    move-result-object v3

    .line 199
    .local v3, links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    if-eqz v3, :cond_24

    .line 200
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 201
    .local v1, l:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v1, :cond_24

    .line 202
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/feed/atom/Link;

    .line 203
    .local v2, link:Lcom/lge/feed/atom/Link;
    invoke-virtual {v2}, Lcom/lge/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object v4, v2

    .line 209
    .end local v0           #i:I
    .end local v1           #l:I
    .end local v2           #link:Lcom/lge/feed/atom/Link;
    .end local v3           #links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    :goto_20
    return-object v4

    .line 201
    .restart local v0       #i:I
    .restart local v1       #l:I
    .restart local v2       #link:Lcom/lge/feed/atom/Link;
    .restart local v3       #links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 209
    .end local v0           #i:I
    .end local v1           #l:I
    .end local v2           #link:Lcom/lge/feed/atom/Link;
    .end local v3           #links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    :cond_24
    const/4 v4, 0x0

    goto :goto_20
.end method

.method public static getAtomFeed(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/AtomFeed;
    .registers 5
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, f:Lcom/lge/feed/Feed;
    const/4 v0, 0x0

    .line 131
    .local v0, eventType:I
    :cond_2
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_19

    .line 132
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 133
    sget-object v3, Lcom/lge/newbay/client/impl/XppUtil;->pf:Lcom/lge/feed/parser/xmlpull/ProcessorFactory;

    invoke-virtual {v3, p0}, Lcom/lge/feed/parser/xmlpull/ProcessorFactory;->createFeedProcessor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/parser/xmlpull/FeedProcessor;

    move-result-object v2

    .line 134
    .local v2, p:Lcom/lge/feed/parser/xmlpull/FeedProcessor;
    if-eqz v2, :cond_2

    .line 135
    invoke-interface {v2, p0}, Lcom/lge/feed/parser/xmlpull/FeedProcessor;->getFeed(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/Feed;

    move-result-object v1

    goto :goto_2

    .line 139
    .end local v2           #p:Lcom/lge/feed/parser/xmlpull/FeedProcessor;
    :cond_19
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/feed/Feed;->setEncoding(Ljava/lang/String;)V

    .line 140
    instance-of v3, v1, Lcom/lge/feed/atom/AtomFeed;

    if-eqz v3, :cond_28

    check-cast v1, Lcom/lge/feed/atom/AtomFeed;

    .end local v1           #f:Lcom/lge/feed/Feed;
    move-object v3, v1

    :goto_27
    return-object v3

    .restart local v1       #f:Lcom/lge/feed/Feed;
    :cond_28
    const/4 v3, 0x0

    goto :goto_27
.end method

.method public static getAtomFeed(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;
    .registers 6
    .parameter "xpp"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, f:Lcom/lge/feed/Feed;
    const/4 v0, 0x0

    .line 156
    .local v0, eventType:I
    :cond_2
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_19

    .line 157
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 158
    sget-object v3, Lcom/lge/newbay/client/impl/XppUtil;->pf:Lcom/lge/feed/parser/xmlpull/ProcessorFactory;

    invoke-virtual {v3, p0}, Lcom/lge/feed/parser/xmlpull/ProcessorFactory;->createFeedProcessor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/parser/xmlpull/FeedProcessor;

    move-result-object v2

    .line 159
    .local v2, p:Lcom/lge/feed/parser/xmlpull/FeedProcessor;
    if-eqz v2, :cond_2

    .line 160
    invoke-interface {v2, p0, p1}, Lcom/lge/feed/parser/xmlpull/FeedProcessor;->getFeed(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/Feed;

    move-result-object v1

    goto :goto_2

    .line 164
    .end local v2           #p:Lcom/lge/feed/parser/xmlpull/FeedProcessor;
    :cond_19
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/feed/Feed;->setEncoding(Ljava/lang/String;)V

    .line 165
    instance-of v3, v1, Lcom/lge/feed/atom/AtomFeed;

    if-eqz v3, :cond_28

    check-cast v1, Lcom/lge/feed/atom/AtomFeed;

    .end local v1           #f:Lcom/lge/feed/Feed;
    move-object v3, v1

    :goto_27
    return-object v3

    .restart local v1       #f:Lcom/lge/feed/Feed;
    :cond_28
    const/4 v3, 0x0

    goto :goto_27
.end method

.method public static getNextBoolean(Lorg/xmlpull/v1/XmlPullParser;Z)Z
    .registers 5
    .parameter "xpp"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "true"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_14
    return v1

    :cond_15
    move v1, p1

    goto :goto_14
.end method

.method public static getNextDate(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;
    .registers 3
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v0}, Lcom/lge/util/DateParser;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static getNextInt(Lorg/xmlpull/v1/XmlPullParser;I)I
    .registers 4
    .parameter "xpp"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_12
    return v1

    :cond_13
    move v1, p1

    goto :goto_12
.end method

.method public static getNextLong(Lorg/xmlpull/v1/XmlPullParser;J)J
    .registers 6
    .parameter "xpp"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_12
    return-wide v1

    :cond_13
    move-wide v1, p1

    goto :goto_12
.end method

.method public static getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 3
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static getNextTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;
    .registers 3
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v0}, Lcom/lge/util/DateParser;->parseW3CTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method
