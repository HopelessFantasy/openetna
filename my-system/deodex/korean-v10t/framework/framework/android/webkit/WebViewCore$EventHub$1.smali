.class Landroid/webkit/WebViewCore$EventHub$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewCore$EventHub;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$EventHub;)V
    .registers 2
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 65
    .parameter "msg"

    .prologue
    .line 662
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v3, v0

    packed-switch v3, :pswitch_data_7da

    .line 1029
    .end local p0
    .end local p1
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 664
    .restart local p0
    .restart local p1
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)V

    goto :goto_8

    .line 670
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->destroy()V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/webkit/WebViewCore;->access$702(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/webkit/WebViewCore;->access$802(Landroid/webkit/WebViewCore;I)I

    goto :goto_8

    .line 676
    :pswitch_39
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$900(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    goto :goto_8

    .line 680
    .restart local p0
    :pswitch_4f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Ljava/util/HashMap;

    .line 681
    .local v54, param:Ljava/util/HashMap;
    const-string v3, "url"

    move-object/from16 v0, v54

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/String;

    .line 682
    .local v62, url:Ljava/lang/String;
    const-string v3, "data"

    move-object/from16 v0, v54

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object/from16 v38, v0

    .line 683
    .local v38, data:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v62

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/webkit/BrowserFrame;->postUrl(Ljava/lang/String;[B)V

    goto :goto_8

    .line 687
    .end local v38           #data:[B
    .end local v54           #param:Ljava/util/HashMap;
    .end local v62           #url:Ljava/lang/String;
    .restart local p1
    :pswitch_87
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Ljava/util/HashMap;

    .line 688
    .local v51, loadParams:Ljava/util/HashMap;
    const-string v3, "baseUrl"

    move-object/from16 v0, v51

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 689
    .local v4, baseUrl:Ljava/lang/String;
    if-eqz v4, :cond_e6

    .line 690
    const/16 v3, 0x3a

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v46

    .line 691
    .local v46, i:I
    if-lez v46, :cond_e6

    .line 702
    const/4 v3, 0x0

    move-object v0, v4

    move v1, v3

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 703
    .local v57, scheme:Ljava/lang/String;
    const-string v3, "http"

    move-object/from16 v0, v57

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e6

    const-string v3, "ftp"

    move-object/from16 v0, v57

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e6

    const-string v3, "about"

    move-object/from16 v0, v57

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e6

    const-string v3, "javascript"

    move-object/from16 v0, v57

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e6

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v3

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    .line 711
    .end local v46           #i:I
    .end local v57           #scheme:Ljava/lang/String;
    :cond_e6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    const-string v5, "data"

    move-object/from16 v0, v51

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "mimeType"

    move-object/from16 v0, v51

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "encoding"

    move-object/from16 v0, v51

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "failUrl"

    move-object/from16 v0, v51

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/BrowserFrame;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 723
    .end local v4           #baseUrl:Ljava/lang/String;
    .end local v51           #loadParams:Ljava/util/HashMap;
    :pswitch_122
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v3

    if-eqz v3, :cond_152

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v3

    if-nez v3, :cond_152

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 728
    :cond_152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->stopLoading()V

    goto/16 :goto_8

    .line 732
    :pswitch_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_8

    .line 736
    :pswitch_16f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/view/KeyEvent;

    const/4 v4, 0x1

    move-object v0, v3

    move-object/from16 v1, p0

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_8

    .line 740
    .restart local p0
    :pswitch_188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_8

    .line 744
    .restart local p0
    :pswitch_1a1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$1200(Landroid/webkit/WebViewCore;)Z

    goto/16 :goto_8

    .line 748
    :pswitch_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;IIF)V

    goto/16 :goto_8

    .line 755
    .restart local p0
    :pswitch_1cf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    invoke-static {v3, v4, v5}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_8

    .line 759
    :pswitch_1e5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Landroid/graphics/Rect;

    .line 760
    .local v55, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v55

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v4, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    invoke-virtual/range {v55 .. v55}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual/range {v55 .. v55}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_8

    .line 767
    .end local v55           #r:Landroid/graphics/Rect;
    :pswitch_20b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v3

    if-nez v3, :cond_246

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_246

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->loadType()I

    move-result v3

    if-nez v3, :cond_246

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_8

    .line 772
    :cond_246
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/webkit/BrowserFrame;->goBackOrForward(I)V

    goto/16 :goto_8

    .line 777
    :pswitch_25b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->stopLoading()V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    invoke-static {v3, v4}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_8

    .line 782
    :pswitch_276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v4, v0

    invoke-static {v4}, Landroid/webkit/WebViewCore$EventHub;->access$1800(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$1702(Landroid/webkit/WebViewCore$EventHub;I)I

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    invoke-static {v3}, Landroid/webkit/WebViewCore$EventHub;->access$1800(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 785
    invoke-static {}, Landroid/webkit/WebViewCore;->pauseTimers()V

    .line 786
    invoke-static {}, Landroid/webkit/CacheManager;->disableTransaction()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 787
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/webkit/WebViewCore$WebCoreThread;->access$502(Z)Z

    .line 788
    invoke-static {}, Landroid/webkit/WebViewCore;->access$300()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_8

    .line 794
    :pswitch_2b0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    invoke-static {v3}, Landroid/webkit/WebViewCore$EventHub;->access$1800(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v4, v0

    invoke-static {v4}, Landroid/webkit/WebViewCore$EventHub;->access$1700(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 795
    invoke-static {}, Landroid/webkit/WebViewCore;->resumeTimers()V

    .line 796
    invoke-static {}, Landroid/webkit/CacheManager;->enableTransaction()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 797
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/webkit/WebViewCore$WebCoreThread;->access$502(Z)Z

    .line 798
    invoke-static {}, Landroid/webkit/WebViewCore;->access$300()Landroid/os/Handler;

    move-result-object v3

    invoke-static {}, Landroid/webkit/WebViewCore;->access$300()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_8

    .line 806
    :pswitch_2e7
    sget-object v3, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v3, :cond_2f3

    .line 807
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 810
    :cond_2f3
    sget-object v3, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_303

    const/4 v4, 0x1

    :goto_2fe
    invoke-virtual {v3, v4}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkOnLine(Z)V

    goto/16 :goto_8

    :cond_303
    const/4 v4, 0x0

    goto :goto_2fe

    .line 815
    :pswitch_305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->clearCache()V

    .line 816
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 817
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    goto/16 :goto_8

    .line 822
    :pswitch_320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$1900(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v4, v0

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    iget v4, v4, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebBackForwardList;->close(I)V

    goto/16 :goto_8

    .line 827
    :pswitch_341
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    .line 828
    .local v49, jMap:Ljava/util/HashMap;
    const-string v3, "focusData"

    move-object/from16 v0, v49

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/webkit/WebViewCore$FocusData;

    .line 829
    .local v42, fData:Landroid/webkit/WebViewCore$FocusData;
    const-string v3, "replace"

    move-object/from16 v0, v49

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 830
    .local v12, replace:Ljava/lang/String;
    const-string v3, "start"

    move-object/from16 v0, v49

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 832
    .local v13, newStart:I
    const-string v3, "end"

    move-object/from16 v0, v49

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 834
    .local v14, newEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v5, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mNode:I

    move v7, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mX:I

    move v8, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mY:I

    move v9, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v10, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v11, v0

    invoke-static/range {v5 .. v14}, Landroid/webkit/WebViewCore;->access$2000(Landroid/webkit/WebViewCore;IIIIIILjava/lang/String;II)V

    goto/16 :goto_8

    .line 840
    .end local v12           #replace:Ljava/lang/String;
    .end local v13           #newStart:I
    .end local v14           #newEnd:I
    .end local v42           #fData:Landroid/webkit/WebViewCore$FocusData;
    .end local v49           #jMap:Ljava/util/HashMap;
    :pswitch_3a7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Ljava/util/HashMap;

    .line 841
    .local v50, jsMap:Ljava/util/HashMap;
    const-string v3, "focusData"

    move-object/from16 v0, v50

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/webkit/WebViewCore$FocusData;

    .line 842
    .local v41, fDat:Landroid/webkit/WebViewCore$FocusData;
    const-string v3, "event"

    move-object/from16 v0, v50

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/view/KeyEvent;

    .line 843
    .local v40, evt:Landroid/view/KeyEvent;
    invoke-virtual/range {v40 .. v40}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v22

    .line 844
    .local v22, keyCode:I
    invoke-virtual/range {v40 .. v40}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v23

    .line 845
    .local v23, keyValue:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 846
    .local v20, generation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v15, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mFrame:I

    move/from16 v16, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mNode:I

    move/from16 v17, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mX:I

    move/from16 v18, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mY:I

    move/from16 v19, v0

    const-string v3, "currentText"

    move-object/from16 v0, v50

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-virtual/range {v40 .. v40}, Landroid/view/KeyEvent;->isDown()Z

    move-result v24

    invoke-virtual/range {v40 .. v40}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v25

    invoke-virtual/range {v40 .. v40}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v26

    invoke-virtual/range {v40 .. v40}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v27

    invoke-static/range {v15 .. v27}, Landroid/webkit/WebViewCore;->access$2100(Landroid/webkit/WebViewCore;IIIIILjava/lang/String;IIZZZZ)V

    goto/16 :goto_8

    .line 858
    .end local v20           #generation:I
    .end local v22           #keyCode:I
    .end local v23           #keyValue:I
    .end local v40           #evt:Landroid/view/KeyEvent;
    .end local v41           #fDat:Landroid/webkit/WebViewCore$FocusData;
    .end local v50           #jsMap:Ljava/util/HashMap;
    :pswitch_412
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebViewCore$FocusData;

    .line 859
    .restart local v41       #fDat:Landroid/webkit/WebViewCore$FocusData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mFrame:I

    move v4, v0

    invoke-static {v3, v4}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_8

    .line 864
    .end local v41           #fDat:Landroid/webkit/WebViewCore$FocusData;
    :pswitch_42b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$2300(Landroid/webkit/WebViewCore;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/Network;->clearUserSslPrefTable()V

    goto/16 :goto_8

    .line 869
    :pswitch_43f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Landroid/webkit/WebViewCore$TouchUpData;

    .line 870
    .local v61, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    move-object v0, v3

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v24, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    move/from16 v25, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mBuildGeneration:I

    move/from16 v26, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    move/from16 v27, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    move/from16 v28, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    move/from16 v29, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    move/from16 v30, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mSize:I

    move/from16 v31, v0

    move-object/from16 v0, v61

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mIsClick:Z

    move/from16 v32, v0

    move-object/from16 v0, v61

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mRetry:Z

    move/from16 v33, v0

    invoke-static/range {v24 .. v33}, Landroid/webkit/WebViewCore;->access$2400(Landroid/webkit/WebViewCore;IIIIIIIZZ)V

    goto/16 :goto_8

    .line 879
    .end local v61           #touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    :pswitch_48c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Landroid/webkit/WebViewCore$TouchEventData;

    .line 880
    .local v60, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$2500(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v3

    iget-object v3, v3, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x18

    move-object/from16 v0, v60

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v60

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v7, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    move v8, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    move v9, v0

    invoke-static {v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$2600(Landroid/webkit/WebViewCore;III)Z

    move-result v6

    if-eqz v6, :cond_4ce

    const/4 v6, 0x1

    :goto_4c5
    invoke-static {v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8

    :cond_4ce
    const/4 v6, 0x0

    goto :goto_4c5

    .line 889
    .end local v60           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :pswitch_4d0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Ljava/util/HashMap;

    .line 890
    .local v52, map:Ljava/util/HashMap;
    const-string v3, "object"

    move-object/from16 v0, v52

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    .line 891
    .local v53, obj:Ljava/lang/Object;
    const-string v3, "interfaceName"

    move-object/from16 v0, v52

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    .line 893
    .local v48, interfaceName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v53

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/webkit/BrowserFrame;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 898
    .end local v48           #interfaceName:Ljava/lang/String;
    .end local v52           #map:Ljava/util/HashMap;
    .end local v53           #obj:Ljava/lang/Object;
    :pswitch_501
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/BrowserFrame;->externalRepresentation(Landroid/os/Message;)V

    goto/16 :goto_8

    .line 903
    .restart local p0
    :pswitch_51c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/BrowserFrame;->documentAsText(Landroid/os/Message;)V

    goto/16 :goto_8

    .line 907
    .restart local p0
    :pswitch_537
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/webkit/WebViewCore$FocusData;

    .line 908
    .local v43, finalData:Landroid/webkit/WebViewCore$FocusData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v5, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mNode:I

    move v7, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mX:I

    move v8, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mY:I

    move v9, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v3, v0

    if-eqz v3, :cond_568

    const/4 v3, 0x1

    move v10, v3

    :goto_563
    invoke-static/range {v5 .. v10}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;IIIIZ)V

    goto/16 :goto_8

    :cond_568
    const/4 v3, 0x0

    move v10, v3

    goto :goto_563

    .line 915
    .end local v43           #finalData:Landroid/webkit/WebViewCore$FocusData;
    :pswitch_56b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$2800(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 919
    :pswitch_577
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/webkit/WebViewCore$FocusData;

    .line 920
    .local v44, focusData:Landroid/webkit/WebViewCore$FocusData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    move-object v0, v3

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v24, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mMoveGeneration:I

    move/from16 v25, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mBuildGeneration:I

    move/from16 v26, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mFrame:I

    move/from16 v27, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mNode:I

    move/from16 v28, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mX:I

    move/from16 v29, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mY:I

    move/from16 v30, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$FocusData;->mIgnoreNullFocus:Z

    move/from16 v31, v0

    invoke-static/range {v24 .. v31}, Landroid/webkit/WebViewCore;->access$2900(Landroid/webkit/WebViewCore;IIIIIIZ)V

    goto/16 :goto_8

    .line 928
    .end local v44           #focusData:Landroid/webkit/WebViewCore$FocusData;
    :pswitch_5b8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/os/Message;

    .line 929
    .local v45, hrefMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    invoke-static {v3, v4, v5}, Landroid/webkit/WebViewCore;->access$3000(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v56

    .line 930
    .local v56, res:Ljava/lang/String;
    invoke-virtual/range {v45 .. v45}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "url"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-virtual/range {v45 .. v45}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8

    .line 936
    .end local v45           #hrefMsg:Landroid/os/Message;
    .end local v56           #res:Ljava/lang/String;
    :pswitch_5e7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$3100(Landroid/webkit/WebViewCore;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$2500(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v3

    if-eqz v3, :cond_60c

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$2500(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->postInvalidate()V

    .line 941
    :cond_60c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$3200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 945
    :pswitch_618
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/os/Message;

    .line 946
    .local v47, imageResult:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->documentHasImages()Z

    move-result v3

    if-eqz v3, :cond_63c

    const/4 v3, 0x1

    :goto_632
    move v0, v3

    move-object/from16 v1, v47

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 948
    invoke-virtual/range {v47 .. v47}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8

    .line 946
    :cond_63c
    const/4 v3, 0x0

    goto :goto_632

    .line 952
    .end local v47           #imageResult:Landroid/os/Message;
    :pswitch_63e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    invoke-static {v3, v4, v5}, Landroid/webkit/WebViewCore;->access$3300(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_8

    .line 956
    :pswitch_654
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/webkit/WebViewCore$FocusData;

    .line 957
    .local v39, delData:Landroid/webkit/WebViewCore$FocusData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v5, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mNode:I

    move v7, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mX:I

    move v8, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mY:I

    move v9, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v10, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v11, v0

    invoke-static/range {v5 .. v11}, Landroid/webkit/WebViewCore;->access$3400(Landroid/webkit/WebViewCore;IIIIII)V

    goto/16 :goto_8

    .line 963
    .end local v39           #delData:Landroid/webkit/WebViewCore$FocusData;
    :pswitch_686
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/webkit/WebViewCore$FocusData;

    .line 964
    .local v58, selData:Landroid/webkit/WebViewCore$FocusData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v5, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v58

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mNode:I

    move v7, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mX:I

    move v8, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/webkit/WebViewCore$FocusData;->mY:I

    move v9, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v10, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v11, v0

    invoke-static/range {v5 .. v11}, Landroid/webkit/WebViewCore;->access$3500(Landroid/webkit/WebViewCore;IIIIII)V

    goto/16 :goto_8

    .line 970
    .end local v58           #selData:Landroid/webkit/WebViewCore$FocusData;
    :pswitch_6b8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/util/SparseBooleanArray;

    .line 972
    .local v35, choices:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v37, v0

    .line 973
    .local v37, choicesSize:I
    move/from16 v0, v37

    new-array v0, v0, [Z

    move-object/from16 v36, v0

    .line 974
    .local v36, choicesArray:[Z
    const/16 v34, 0x0

    .local v34, c:I
    :goto_6ce
    move/from16 v0, v34

    move/from16 v1, v37

    if-ge v0, v1, :cond_6e1

    .line 975
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    aput-boolean v3, v36, v34

    .line 974
    add-int/lit8 v34, v34, 0x1

    goto :goto_6ce

    .line 977
    :cond_6e1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v3

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$3600(Landroid/webkit/WebViewCore;[ZI)V

    goto/16 :goto_8

    .line 982
    .end local v34           #c:I
    .end local v35           #choices:Landroid/util/SparseBooleanArray;
    .end local v36           #choicesArray:[Z
    .end local v37           #choicesSize:I
    :pswitch_6f2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    invoke-static {v3, v4}, Landroid/webkit/WebViewCore;->access$3700(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_8

    .line 986
    :pswitch_703
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    invoke-static {v3, v4}, Landroid/webkit/WebViewCore;->access$3800(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_8

    .line 990
    :pswitch_714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/graphics/Region;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$3900(Landroid/webkit/WebViewCore;Landroid/graphics/Region;)Ljava/lang/String;

    move-result-object v59

    .line 991
    .local v59, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$2500(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v3

    iget-object v3, v3, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x16

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8

    .line 997
    .end local v59           #str:Ljava/lang/String;
    .restart local p1
    :pswitch_746
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_75b

    const/4 v4, 0x1

    :goto_756
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore;->access$4000(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_8

    :cond_75b
    const/4 v4, 0x0

    goto :goto_756

    .line 1001
    :pswitch_75d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_772

    const/4 v4, 0x1

    :goto_76d
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore;->access$4100(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_8

    :cond_772
    const/4 v4, 0x0

    goto :goto_76d

    .line 1005
    :pswitch_774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$4200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 1009
    :pswitch_780
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    invoke-static {v3, v4}, Landroid/webkit/WebViewCore;->access$4302(Landroid/webkit/WebViewCore;I)I

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v4, v0

    invoke-static {v3, v4}, Landroid/webkit/WebViewCore;->access$4402(Landroid/webkit/WebViewCore;I)I

    goto/16 :goto_8

    .line 1014
    :pswitch_7a0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    if-eqz v4, :cond_7b4

    const/4 v4, 0x1

    :goto_7af
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore;->access$4500(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_8

    :cond_7b4
    const/4 v4, 0x0

    goto :goto_7af

    .line 1018
    :pswitch_7b6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$4600(Landroid/webkit/WebViewCore;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/webkit/WebViewCore;->access$4702(Landroid/webkit/WebViewCore;Z)Z

    goto/16 :goto_8

    .line 1026
    :pswitch_7cd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v3, v0

    iget-object v3, v3, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$4800(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 662
    nop

    :pswitch_data_7da
    .packed-switch 0x64
        :pswitch_39
        :pswitch_122
        :pswitch_15e
        :pswitch_16f
        :pswitch_188
        :pswitch_1ad
        :pswitch_20b
        :pswitch_1cf
        :pswitch_25b
        :pswitch_276
        :pswitch_2b0
        :pswitch_305
        :pswitch_320
        :pswitch_686
        :pswitch_341
        :pswitch_3a7
        :pswitch_1e5
        :pswitch_5e7
        :pswitch_1a1
        :pswitch_2e7
        :pswitch_618
        :pswitch_63e
        :pswitch_654
        :pswitch_6b8
        :pswitch_6f2
        :pswitch_8
        :pswitch_703
        :pswitch_56b
        :pswitch_412
        :pswitch_714
        :pswitch_9
        :pswitch_780
        :pswitch_7a0
        :pswitch_7b6
        :pswitch_7cd
        :pswitch_537
        :pswitch_577
        :pswitch_5b8
        :pswitch_4d0
        :pswitch_87
        :pswitch_43f
        :pswitch_48c
        :pswitch_4f
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_42b
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_501
        :pswitch_51c
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_746
        :pswitch_75d
        :pswitch_774
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_14
    .end packed-switch
.end method
