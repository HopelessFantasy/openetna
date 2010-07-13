.class public Lcom/lge/feed/parser/FeedParserFactory;
.super Ljava/lang/Object;
.source "FeedParserFactory.java"


# static fields
.field static PARSERS:[[Ljava/lang/String;

.field private static instance:Lcom/lge/feed/parser/FeedParserFactory;


# instance fields
.field private parser:Lcom/lge/feed/parser/FeedParser;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-array v0, v4, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "org.xmlpull.v1.XmlPullParserFactory"

    aput-object v2, v1, v3

    const-string v2, "com.lge.feed.parser.xmlpull.XmlPullFeedParser"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/feed/parser/FeedParserFactory;->PARSERS:[[Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/lge/feed/parser/FeedParserFactory;

    invoke-direct {v0}, Lcom/lge/feed/parser/FeedParserFactory;-><init>()V

    sput-object v0, Lcom/lge/feed/parser/FeedParserFactory;->instance:Lcom/lge/feed/parser/FeedParserFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 8

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lge/feed/parser/FeedParserFactory;->parser:Lcom/lge/feed/parser/FeedParser;

    .line 42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 43
    .local v2, cl:Ljava/lang/ClassLoader;
    sget-object v0, Lcom/lge/feed/parser/FeedParserFactory;->PARSERS:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_12
    if-ge v3, v4, :cond_2e

    aget-object v5, v0, v3

    .line 45
    .local v5, p:[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_17
    aget-object v6, v5, v6

    invoke-virtual {v2, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 46
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v2, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 47
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/feed/parser/FeedParser;

    iput-object v6, p0, Lcom/lge/feed/parser/FeedParserFactory;->parser:Lcom/lge/feed/parser/FeedParser;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2b} :catch_2f

    .line 43
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 51
    .end local v5           #p:[Ljava/lang/String;
    :cond_2e
    return-void

    .line 48
    .restart local v5       #p:[Ljava/lang/String;
    :catch_2f
    move-exception v6

    goto :goto_2b
.end method

.method public static getInstance()Lcom/lge/feed/parser/FeedParserFactory;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/lge/feed/parser/FeedParserFactory;->instance:Lcom/lge/feed/parser/FeedParserFactory;

    return-object v0
.end method


# virtual methods
.method public getParser()Lcom/lge/feed/parser/FeedParser;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/feed/parser/FeedParserFactory;->parser:Lcom/lge/feed/parser/FeedParser;

    return-object v0
.end method
