.class public Lcom/lge/newbay/client/AtomFeedContainer;
.super Ljava/lang/Object;
.source "AtomFeedContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;
    }
.end annotation


# instance fields
.field control:Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;

.field feed:Lcom/lge/feed/atom/AtomFeed;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/lge/feed/atom/AtomFeed;Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V
    .registers 3
    .parameter "feed"
    .parameter "control"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/lge/newbay/client/AtomFeedContainer;->feed:Lcom/lge/feed/atom/AtomFeed;

    .line 120
    iput-object p2, p0, Lcom/lge/newbay/client/AtomFeedContainer;->control:Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;

    .line 121
    return-void
.end method


# virtual methods
.method public getControl()Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lge/newbay/client/AtomFeedContainer;->control:Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;

    return-object v0
.end method

.method public getFeed()Lcom/lge/feed/atom/AtomFeed;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/newbay/client/AtomFeedContainer;->feed:Lcom/lge/feed/atom/AtomFeed;

    return-object v0
.end method

.method public setControl(Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V
    .registers 2
    .parameter "control"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lge/newbay/client/AtomFeedContainer;->control:Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;

    .line 110
    return-void
.end method

.method public setFeed(Lcom/lge/feed/atom/AtomFeed;)V
    .registers 2
    .parameter "feed"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lge/newbay/client/AtomFeedContainer;->feed:Lcom/lge/feed/atom/AtomFeed;

    .line 94
    return-void
.end method
