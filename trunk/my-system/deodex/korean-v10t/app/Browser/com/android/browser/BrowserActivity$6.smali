.class Lcom/android/browser/BrowserActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 822
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$6;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const-string v10, "OmaDrmHandlerV2ID"

    .line 823
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.lge.browser.download.DD_POPUP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 824
    const-string v7, "OmaDrmHandlerV2ID"

    invoke-virtual {p2, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 825
    .local v5, nOmaDrmHandlerV2ID:I
    const-string v7, "ddName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 826
    .local v1, ddName:Ljava/lang/String;
    const-string v7, "ddSize"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 827
    .local v2, ddSize:Ljava/lang/String;
    const-string v7, "ddType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, ddType:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/browser/BrowserActivity$6;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v7, v5, v1, v2, v3}, Lcom/android/browser/BrowserActivity;->promptOmaDrmV2DD1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    .end local v1           #ddName:Ljava/lang/String;
    .end local v2           #ddSize:Ljava/lang/String;
    .end local v3           #ddType:Ljava/lang/String;
    .end local v5           #nOmaDrmHandlerV2ID:I
    :cond_2c
    :goto_2c
    return-void

    .line 830
    :cond_2d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.lge.browser.download.ROAP_POPUP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 831
    const-string v7, "show"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 832
    .local v0, bShow:Z
    const-string v7, "OmaDrmHandlerV2ID"

    invoke-virtual {p2, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 833
    .restart local v5       #nOmaDrmHandlerV2ID:I
    iget-object v7, p0, Lcom/android/browser/BrowserActivity$6;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v7, v0, v5}, Lcom/android/browser/BrowserActivity;->access$1000(Lcom/android/browser/BrowserActivity;ZI)V

    goto :goto_2c

    .line 835
    .end local v0           #bShow:Z
    .end local v5           #nOmaDrmHandlerV2ID:I
    :cond_4b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.lge.browser.download.USER_CONSENT_POPUP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 836
    const-string v7, "PopupID"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 837
    .local v6, nPopupID:I
    const-string v7, "message"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 838
    .local v4, message:Ljava/lang/String;
    const-string v7, "OmaDrmHandlerV2ID"

    invoke-virtual {p2, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 839
    .restart local v5       #nOmaDrmHandlerV2ID:I
    iget-object v7, p0, Lcom/android/browser/BrowserActivity$6;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v7, v6, v4, v5}, Lcom/android/browser/BrowserActivity;->access$1100(Lcom/android/browser/BrowserActivity;ILjava/lang/String;I)V

    goto :goto_2c
.end method
