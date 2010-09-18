.class Lcom/android/providers/downloads/DownloadNotification$NotificationItem;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationItem"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field id:I

.field packageName:Ljava/lang/String;

.field titleCount:I

.field titles:[Ljava/lang/String;

.field totalCurrent:I

.field totalTotal:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->totalCurrent:I

    .line 65
    iput v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->totalTotal:I

    .line 66
    iput v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->titleCount:I

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->titles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addItem(Ljava/lang/String;II)V
    .registers 6
    .parameter "title"
    .parameter "currentBytes"
    .parameter "totalBytes"

    .prologue
    const/4 v1, -0x1

    .line 75
    iget v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->totalCurrent:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->totalCurrent:I

    .line 76
    if-lez p3, :cond_c

    iget v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->totalTotal:I

    if-ne v0, v1, :cond_20

    .line 77
    :cond_c
    iput v1, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->totalTotal:I

    .line 81
    :goto_e
    iget v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->titleCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_19

    .line 82
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->titles:[Ljava/lang/String;

    iget v1, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->titleCount:I

    aput-object p1, v0, v1

    .line 84
    :cond_19
    iget v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->titleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->titleCount:I

    .line 85
    return-void

    .line 79
    :cond_20
    iget v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->totalTotal:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->totalTotal:I

    goto :goto_e
.end method
