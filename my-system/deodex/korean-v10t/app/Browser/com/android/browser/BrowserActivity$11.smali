.class Lcom/android/browser/BrowserActivity$11;
.super Landroid/os/Handler;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
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
    .line 2849
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/16 v3, 0x6b

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v6, "url"

    .line 2850
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_122

    .line 2935
    .end local p0
    :cond_c
    :goto_c
    return-void

    .line 2852
    .restart local p0
    :sswitch_d
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/util/HashMap;

    .line 2853
    .local v9, map:Ljava/util/HashMap;
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    const-string v0, "view"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/BrowserActivity$AnimatingView;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_2c

    move v3, v4

    :goto_20
    const-string v0, "msg"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-static {v2, p0, v3, v0}, Lcom/android/browser/BrowserActivity;->access$2000(Lcom/android/browser/BrowserActivity;Lcom/android/browser/BrowserActivity$AnimatingView;ZLandroid/os/Message;)V

    goto :goto_c

    :cond_2c
    move v3, v5

    goto :goto_20

    .line 2858
    .end local v9           #map:Ljava/util/HashMap;
    .restart local p0
    :sswitch_2e
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v4, :cond_3f

    move v3, v4

    :goto_37
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/browser/BrowserActivity$AnimatingView;

    invoke-static {v0, v2, v3, p0}, Lcom/android/browser/BrowserActivity;->access$2100(Lcom/android/browser/BrowserActivity;IZLcom/android/browser/BrowserActivity$AnimatingView;)V

    goto :goto_c

    .restart local p0
    :cond_3f
    move v3, v5

    goto :goto_37

    .line 2866
    :sswitch_41
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$1310(Lcom/android/browser/BrowserActivity;)I

    .line 2867
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, v2, v5, v2}, Lcom/android/browser/BrowserActivity;->access$2200(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Landroid/os/Message;ZLjava/lang/String;)V

    goto :goto_c

    .line 2871
    .restart local p0
    :sswitch_50
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "url"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2872
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    .line 2875
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    .line 2876
    .local v7, focusNodeMap:Ljava/util/HashMap;
    const-string v0, "webview"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/webkit/WebView;

    .line 2878
    .local v10, view:Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-ne v0, v10, :cond_c

    .line 2881
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_148

    goto :goto_c

    .line 2884
    :sswitch_7e
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/browser/BrowserActivity;->access$2300(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_c

    .line 2887
    :sswitch_8a
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$2400(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2890
    :sswitch_91
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    const-class v2, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v8, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2892
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "url"

    invoke-virtual {v8, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2893
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0, v8}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 2896
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_a6
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2899
    :sswitch_ad
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$1900(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 2903
    :sswitch_b4
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    const-wide/16 v5, -0x1

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/browser/BrowserActivity;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 2909
    .end local v1           #url:Ljava/lang/String;
    .end local v7           #focusNodeMap:Ljava/util/HashMap;
    .end local v10           #view:Landroid/webkit/WebView;
    :sswitch_bf
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v2, p0}, Lcom/android/browser/BrowserActivity;->access$2300(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2913
    .restart local p0
    :sswitch_d0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$2500(Lcom/android/browser/BrowserActivity;)V

    goto/16 :goto_c

    .line 2917
    :sswitch_d7
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$400(Lcom/android/browser/BrowserActivity;)V

    goto/16 :goto_c

    .line 2922
    :sswitch_de
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$600(Lcom/android/browser/BrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2923
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$600(Lcom/android/browser/BrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$600(Lcom/android/browser/BrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2925
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$2600(Lcom/android/browser/BrowserActivity;)V

    goto/16 :goto_c

    .line 2929
    :sswitch_103
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$2700(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2930
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$11;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$2700(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2931
    const-string v0, "browser"

    const-string v2, "[WakeLock] Native : released. timer expired!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 2850
    nop

    :sswitch_data_122
    .sparse-switch
        0x66 -> :sswitch_50
        0x67 -> :sswitch_d7
        0x68 -> :sswitch_d
        0x69 -> :sswitch_2e
        0x6a -> :sswitch_41
        0x6b -> :sswitch_de
        0x6c -> :sswitch_103
        0x3e9 -> :sswitch_bf
        0x3ea -> :sswitch_d0
    .end sparse-switch

    .line 2881
    :sswitch_data_148
    .sparse-switch
        0x7f0c006b -> :sswitch_7e
        0x7f0c009f -> :sswitch_8a
        0x7f0c00a0 -> :sswitch_91
        0x7f0c00a1 -> :sswitch_b4
        0x7f0c00a2 -> :sswitch_a6
        0x7f0c00a3 -> :sswitch_ad
        0x7f0c00a5 -> :sswitch_b4
        0x7f0c00a6 -> :sswitch_7e
    .end sparse-switch
.end method
