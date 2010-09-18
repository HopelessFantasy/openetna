.class final Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
.super Ljava/lang/Object;
.source "DeliveryReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeliveryReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmsReportStatus"
.end annotation


# instance fields
.field final deliveryStatus:I

.field final readStatus:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "drStatus"
    .parameter "rrStatus"

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput p1, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->deliveryStatus:I

    .line 398
    iput p2, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    .line 399
    return-void
.end method
