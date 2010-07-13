.class Lcom/lge/hiddenmenu/gps_test/GpsTools$1;
.super Landroid/content/BroadcastReceiver;
.source "GpsTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/gps_test/GpsTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/gps_test/GpsTools;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsTools;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools$1;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsTools;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/lge/hiddenmenu/gps_test/GpsTools;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 53
    const-string v1, "xtra_enabled"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mXtraEnabled:I

    .line 54
    const-string v1, "xtra_download_date"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mXtraDownloadDate:J

    .line 55
    const-string v1, "xtra_auto_download"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mXtraAutoDownloadEnabled:I

    .line 56
    const-string v1, "xtra_auto_download_frequency"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mXtraAutoDownloadFrequency:I

    .line 57
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools$1;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsTools;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received - XTRA Setting:\nmXtraEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mXtraEnabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nmXtraDownloadDate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mXtraDownloadDate:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nmXtraAutoDownload = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mXtraAutoDownloadEnabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nmXtraAutoDownloadFrequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mXtraAutoDownloadFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/hiddenmenu/gps_test/GpsTools;->access$100(Lcom/lge/hiddenmenu/gps_test/GpsTools;Ljava/lang/String;)V

    .line 62
    :cond_6f
    return-void
.end method
