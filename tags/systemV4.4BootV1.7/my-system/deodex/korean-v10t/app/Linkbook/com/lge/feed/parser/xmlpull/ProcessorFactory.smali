.class public Lcom/lge/feed/parser/xmlpull/ProcessorFactory;
.super Ljava/lang/Object;
.source "ProcessorFactory.java"


# static fields
.field static final TAG_ATOM:Ljava/lang/String; = "feed"

.field static instance:Lcom/lge/feed/parser/xmlpull/ProcessorFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Lcom/lge/feed/parser/xmlpull/ProcessorFactory;

    invoke-direct {v0}, Lcom/lge/feed/parser/xmlpull/ProcessorFactory;-><init>()V

    sput-object v0, Lcom/lge/feed/parser/xmlpull/ProcessorFactory;->instance:Lcom/lge/feed/parser/xmlpull/ProcessorFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method private createAtomFeedProcessor()Lcom/lge/feed/parser/xmlpull/FeedProcessor;
    .registers 2

    .prologue
    .line 89
    new-instance v0, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;

    invoke-direct {v0}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/lge/feed/parser/xmlpull/ProcessorFactory;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/lge/feed/parser/xmlpull/ProcessorFactory;->instance:Lcom/lge/feed/parser/xmlpull/ProcessorFactory;

    return-object v0
.end method


# virtual methods
.method public createFeedProcessor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/parser/xmlpull/FeedProcessor;
    .registers 5
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, name:Ljava/lang/String;
    const-string v1, "feed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 43
    invoke-direct {p0}, Lcom/lge/feed/parser/xmlpull/ProcessorFactory;->createAtomFeedProcessor()Lcom/lge/feed/parser/xmlpull/FeedProcessor;

    move-result-object v1

    return-object v1

    .line 51
    :cond_11
    new-instance v1, Lcom/lge/feed/parser/FeedParseException;

    const-string v2, "Unknown Feed "

    invoke-direct {v1, v2}, Lcom/lge/feed/parser/FeedParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
