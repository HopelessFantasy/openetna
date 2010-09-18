.class Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AirtestResultViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;


# direct methods
.method private constructor <init>(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$MyBroadcastReceiver;->this$0:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$MyBroadcastReceiver;-><init>(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$MyBroadcastReceiver;->this$0:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;

    invoke-static {v3}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->access$308(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;)I

    .line 89
    const-string v3, "com.lge.gps.GPSRESULT_RECEIVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 90
    const-string v3, "msgText"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$MyBroadcastReceiver;->this$0:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;

    invoke-static {v3}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->access$200(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 92
    .local v2, tmp:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$MyBroadcastReceiver;->this$0:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;

    invoke-static {v3}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->access$200(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$MyBroadcastReceiver;->this$0:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->access$300(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v3, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$MyBroadcastReceiver;->this$0:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;

    invoke-static {v3}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->access$200(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 95
    .end local v1           #str:Ljava/lang/String;
    .end local v2           #tmp:Ljava/lang/CharSequence;
    :cond_56
    return-void
.end method
