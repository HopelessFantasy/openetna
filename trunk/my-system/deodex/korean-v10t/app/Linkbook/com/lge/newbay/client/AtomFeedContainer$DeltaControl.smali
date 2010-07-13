.class public Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;
.super Ljava/lang/Object;
.source "AtomFeedContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/AtomFeedContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeltaControl"
.end annotation


# instance fields
.field private lastModified:Ljava/util/Date;

.field private statusCode:I

.field private timeModeFrom:Ljava/util/Date;

.field private timeModeTo:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I)V
    .registers 5
    .parameter "lastModified"
    .parameter "timeModeFrom"
    .parameter "timeModeTo"
    .parameter "statusCode"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->lastModified:Ljava/util/Date;

    .line 67
    iput-object p2, p0, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->timeModeFrom:Ljava/util/Date;

    .line 68
    iput-object p3, p0, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->timeModeTo:Ljava/util/Date;

    .line 69
    iput p4, p0, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->statusCode:I

    .line 70
    return-void
.end method


# virtual methods
.method public getLastModified()Ljava/util/Date;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->statusCode:I

    return v0
.end method

.method public getTimeModeFrom()Ljava/util/Date;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->timeModeFrom:Ljava/util/Date;

    return-object v0
.end method

.method public getTimeModeTo()Ljava/util/Date;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->timeModeTo:Ljava/util/Date;

    return-object v0
.end method

.method public setLastModified(Ljava/util/Date;)V
    .registers 2
    .parameter "lastModified"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->lastModified:Ljava/util/Date;

    .line 38
    return-void
.end method

.method public setStatusCode(I)V
    .registers 2
    .parameter "statusCode"

    .prologue
    .line 61
    iput p1, p0, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->statusCode:I

    .line 62
    return-void
.end method

.method public setTimeModeFrom(Ljava/util/Date;)V
    .registers 2
    .parameter "timeModeFrom"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->timeModeFrom:Ljava/util/Date;

    .line 46
    return-void
.end method

.method public setTimeModeTo(Ljava/util/Date;)V
    .registers 2
    .parameter "timeModeTo"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->timeModeTo:Ljava/util/Date;

    .line 54
    return-void
.end method
