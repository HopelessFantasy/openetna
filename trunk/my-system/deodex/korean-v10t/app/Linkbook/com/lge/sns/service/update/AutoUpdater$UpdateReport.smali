.class Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;
.super Ljava/lang/Object;
.source "AutoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/service/update/AutoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateReport"
.end annotation


# instance fields
.field numberOfFeed:I

.field numberOfMessage:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->numberOfFeed:I

    .line 23
    iput v0, p0, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->numberOfMessage:I

    return-void
.end method


# virtual methods
.method public getNumberOfFeed()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->numberOfFeed:I

    return v0
.end method

.method public getNumberOfMessage()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->numberOfMessage:I

    return v0
.end method

.method public setNumberOfFeed(I)V
    .registers 2
    .parameter "numberOfFeed"

    .prologue
    .line 32
    iput p1, p0, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->numberOfFeed:I

    .line 33
    return-void
.end method

.method public setNumberOfMessage(I)V
    .registers 2
    .parameter "numberOfMessage"

    .prologue
    .line 35
    iput p1, p0, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->numberOfMessage:I

    .line 36
    return-void
.end method
