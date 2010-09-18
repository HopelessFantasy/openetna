.class Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$1;
.super Ljava/lang/Object;
.source "AirtestResultViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$1;->this$0:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    .line 60
    :goto_7
    return-void

    .line 53
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.GPSONSMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, intent1:Landroid/content/Intent;
    const-string v1, "testNum"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$1;->this$0:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;

    iget-object v1, v1, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$1;->this$0:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;

    const-string v2, "Send Test SMS: AT%GPS=2"

    invoke-static {v1, v2}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->access$100(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;Ljava/lang/String;)V

    goto :goto_7

    .line 50
    :pswitch_data_24
    .packed-switch 0x7f070074
        :pswitch_8
    .end packed-switch
.end method
