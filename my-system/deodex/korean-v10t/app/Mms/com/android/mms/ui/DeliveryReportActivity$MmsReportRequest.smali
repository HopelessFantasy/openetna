.class final Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;
.super Ljava/lang/Object;
.source "DeliveryReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeliveryReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmsReportRequest"
.end annotation


# instance fields
.field private final mIsDeliveryReportRequsted:Z

.field private final mIsReadReportRequested:Z

.field private final mRecipient:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 8
    .parameter "recipient"
    .parameter "drValue"
    .parameter "rrValue"

    .prologue
    const/16 v3, 0x80

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p1, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->mRecipient:Ljava/lang/String;

    .line 409
    if-ne p2, v3, :cond_14

    move v0, v2

    :goto_c
    iput-boolean v0, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->mIsDeliveryReportRequsted:Z

    .line 410
    if-ne p3, v3, :cond_16

    move v0, v2

    :goto_11
    iput-boolean v0, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->mIsReadReportRequested:Z

    .line 411
    return-void

    :cond_14
    move v0, v1

    .line 409
    goto :goto_c

    :cond_16
    move v0, v1

    .line 410
    goto :goto_11
.end method


# virtual methods
.method public getRecipient()Ljava/lang/String;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method public isDeliveryReportRequested()Z
    .registers 4

    .prologue
    .line 418
    const-string v0, "DeliveryReportActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeliveryReportRequested :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->mIsDeliveryReportRequsted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-boolean v0, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->mIsDeliveryReportRequsted:Z

    return v0
.end method

.method public isReadReportRequested()Z
    .registers 4

    .prologue
    .line 423
    const-string v0, "DeliveryReportActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReadReportRequested :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->mIsReadReportRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-boolean v0, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->mIsReadReportRequested:Z

    return v0
.end method
