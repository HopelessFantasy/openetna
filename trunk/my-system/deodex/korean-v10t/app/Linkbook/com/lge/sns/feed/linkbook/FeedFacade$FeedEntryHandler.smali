.class Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;
.super Ljava/lang/Object;
.source "FeedFacade.java"

# interfaces
.implements Lcom/lge/feed/Feed$FeedEntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/feed/linkbook/FeedFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeedEntryHandler"
.end annotation


# instance fields
.field private feedCount:I

.field private final maxFeed:I

.field private final snsId:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/sns/feed/linkbook/FeedFacade;


# direct methods
.method public constructor <init>(Lcom/lge/sns/feed/linkbook/FeedFacade;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter "snsId"
    .parameter "maxFeed"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;->this$0:Lcom/lge/sns/feed/linkbook/FeedFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;->feedCount:I

    .line 422
    iput-object p2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;->snsId:Ljava/lang/String;

    .line 423
    iput p3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;->maxFeed:I

    .line 424
    return-void
.end method


# virtual methods
.method public getFeedCount()I
    .registers 2

    .prologue
    .line 438
    iget v0, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;->feedCount:I

    return v0
.end method

.method public onEntry(Lcom/lge/feed/atom/Entry;)V
    .registers 4
    .parameter "entry"

    .prologue
    .line 428
    :try_start_0
    iget v0, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;->feedCount:I

    iget v1, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;->maxFeed:I

    if-ge v0, v1, :cond_16

    .line 429
    iget-object v0, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;->this$0:Lcom/lge/sns/feed/linkbook/FeedFacade;

    iget-object v1, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;->snsId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->access$000(Lcom/lge/sns/feed/linkbook/FeedFacade;Ljava/lang/String;Lcom/lge/feed/atom/Entry;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 430
    iget v0, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;->feedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;->feedCount:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 436
    :cond_16
    :goto_16
    return-void

    .line 433
    :catch_17
    move-exception v0

    goto :goto_16
.end method
