.class Landroid/webkit/WebView$PrivateHandler;
.super Landroid/os/Handler;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 2
    .parameter

    .prologue
    .line 4543
    iput-object p1, p0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 33
    .parameter "msg"

    .prologue
    .line 4551
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_66c

    .line 4823
    :pswitch_9
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4826
    .end local p0
    :cond_c
    :goto_c
    return-void

    .line 4553
    .restart local p0
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v27

    const-string v28, "host"

    invoke-virtual/range {v27 .. v28}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "username"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "password"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v26 .. v29}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4557
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c

    .line 4561
    .restart local p0
    :pswitch_44
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v27

    const-string v28, "host"

    invoke-virtual/range {v27 .. v28}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v26 .. v29}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4563
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c

    .line 4567
    .restart local p0
    :pswitch_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 4568
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$1202(Landroid/webkit/WebView;I)I

    .line 4569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$1300(Landroid/webkit/WebView;)V

    goto/16 :goto_c

    .line 4574
    :pswitch_93
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$1400(Landroid/webkit/WebView;)Z

    move-result v26

    if-nez v26, :cond_c

    .line 4575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    const/16 v27, 0x7

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$1202(Landroid/webkit/WebView;I)I

    .line 4576
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    if-eqz v26, :cond_bf

    .line 4577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebView;->performLongClick()Z

    .line 4579
    :cond_bf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$1500(Landroid/webkit/WebView;)V

    goto/16 :goto_c

    .line 4585
    :pswitch_ca
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    const/16 v27, 0x7

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$1202(Landroid/webkit/WebView;I)I

    .line 4586
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    const/16 v27, 0x42

    new-instance v28, Landroid/view/KeyEvent;

    const/16 v29, 0x1

    const/16 v30, 0x42

    invoke-direct/range {v28 .. v30}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual/range {v26 .. v28}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_c

    .line 4591
    :pswitch_eb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    invoke-static/range {v26 .. v29}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;IIZ)V

    goto/16 :goto_c

    .line 4594
    .restart local p0
    :pswitch_10e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v26

    if-eqz v26, :cond_127

    .line 4597
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$1702(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_c

    .line 4602
    :cond_127
    :pswitch_127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    invoke-static/range {v26 .. v28}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;II)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 4606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$1702(Landroid/webkit/WebView;Z)Z

    .line 4607
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v26

    const/16 v27, 0x83

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_c

    .line 4612
    :pswitch_167
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    invoke-static/range {v26 .. v28}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;II)V

    goto/16 :goto_c

    .line 4616
    :pswitch_17e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/webkit/WebViewCore$DrawData;

    .line 4618
    .local v8, draw:Landroid/webkit/WebViewCore$DrawData;
    move-object v0, v8

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mViewPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    .line 4619
    .local v23, viewSize:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)F

    move-result v26

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_1e3

    .line 4623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)F

    move-result v27

    div-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v26

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e3

    .line 4624
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;F)F

    .line 4625
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v26

    const/16 v27, 0x79

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v26 .. v29}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4629
    :cond_1e3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$2300(Landroid/webkit/WebView;)Z

    move-result v26

    if-nez v26, :cond_21f

    .line 4630
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x3f0

    move-object v0, v8

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$2402(Landroid/webkit/WebView;F)F

    .line 4637
    :cond_21f
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/webkit/WebView;->mLastWidthSent:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2c1

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/webkit/WebView;->mLastHeightSent:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2c1

    const/16 v26, 0x1

    move/from16 v22, v26

    .line 4639
    .local v22, updateLayout:Z
    :goto_253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$2500(Landroid/webkit/WebView;IIZ)V

    .line 4646
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v27, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/webkit/WebView;->access$2600(Landroid/webkit/WebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    .line 4647
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$2700(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;

    move-result-object v26

    if-eqz v26, :cond_c

    .line 4648
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$2700(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    goto/16 :goto_c

    .line 4637
    .end local v22           #updateLayout:Z
    :cond_2c1
    const/16 v26, 0x0

    move/from16 v22, v26

    goto :goto_253

    .line 4653
    .end local v8           #draw:Landroid/webkit/WebViewCore$DrawData;
    .end local v23           #viewSize:Landroid/graphics/Point;
    :pswitch_2c6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$2800(Landroid/webkit/WebView;I)V

    goto/16 :goto_c

    .line 4658
    :pswitch_2d7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;)Z

    move-result v26

    if-eqz v26, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)Landroid/webkit/TextDialog;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/webkit/TextDialog;->isSameTextField(I)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 4660
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "password"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_341

    .line 4661
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)Landroid/webkit/TextDialog;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/TextDialog;->getText()Landroid/text/Editable;

    move-result-object v21

    .line 4662
    .local v21, text:Landroid/text/Spannable;
    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v19

    .line 4663
    .local v19, start:I
    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v10

    .line 4664
    .local v10, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)Landroid/webkit/TextDialog;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/webkit/TextDialog;->setInPassword(Z)V

    .line 4667
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)Landroid/webkit/TextDialog;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/TextDialog;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 4668
    .local v15, pword:Landroid/text/Spannable;
    move-object v0, v15

    move/from16 v1, v19

    move v2, v10

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_c

    .line 4671
    .end local v10           #end:I
    .end local v15           #pword:Landroid/text/Spannable;
    .end local v19           #start:I
    .end local v21           #text:Landroid/text/Spannable;
    :cond_341
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/webkit/WebView;->access$3100(Landroid/webkit/WebView;)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 4672
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)Landroid/webkit/TextDialog;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/TextDialog;->setTextAndKeepSelection(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 4678
    .restart local p0
    :pswitch_372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$3200(Landroid/webkit/WebView;)I

    move-result v26

    if-eqz v26, :cond_c

    .line 4687
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/HashMap;

    .line 4688
    .local v18, scaleLimit:Ljava/util/HashMap;
    const-string v26, "minScale"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 4689
    .local v13, minScale:I
    if-nez v13, :cond_42e

    .line 4690
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/webkit/WebView;->access$3300()F

    move-result v27

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$2402(Landroid/webkit/WebView;F)F

    .line 4691
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$2302(Landroid/webkit/WebView;Z)Z

    .line 4696
    :goto_3b0
    const-string v26, "maxScale"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 4697
    .local v12, maxScale:I
    if-nez v12, :cond_451

    .line 4698
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/webkit/WebView;->access$3500()F

    move-result v27

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$3402(Landroid/webkit/WebView;F)F

    .line 4703
    :goto_3cf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$3600(Landroid/webkit/WebView;)Z

    move-result v26

    if-nez v26, :cond_c

    .line 4706
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)I

    move-result v25

    .line 4707
    .local v25, width:I
    if-eqz v25, :cond_c

    .line 4710
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v11, v0

    .line 4711
    .local v11, initialScale:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    .line 4713
    .local v24, viewportWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)F

    move-result v17

    .line 4714
    .local v17, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)I

    move-result v26

    if-lez v26, :cond_469

    .line 4715
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x42c8

    div-float v17, v26, v27

    .line 4732
    :cond_41b
    :goto_41b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v17

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;FZ)V

    goto/16 :goto_c

    .line 4693
    .end local v11           #initialScale:I
    .end local v12           #maxScale:I
    .end local v17           #scale:F
    .end local v24           #viewportWidth:I
    .end local v25           #width:I
    :cond_42e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    move v0, v13

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x4059

    div-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$2402(Landroid/webkit/WebView;F)F

    .line 4694
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$2302(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_3b0

    .line 4700
    .restart local v12       #maxScale:I
    :cond_451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    move v0, v12

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x4059

    div-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$3402(Landroid/webkit/WebView;F)F

    goto/16 :goto_3cf

    .line 4717
    .restart local v11       #initialScale:I
    .restart local v17       #scale:F
    .restart local v24       #viewportWidth:I
    .restart local v25       #width:I
    :cond_469
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v26

    if-eqz v26, :cond_48b

    .line 4720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebView;->mLastWidthSent:I

    .line 4722
    :cond_48b
    if-nez v11, :cond_4a3

    .line 4725
    if-lez v24, :cond_41b

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_41b

    .line 4726
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v17, v26, v27

    goto/16 :goto_41b

    .line 4729
    :cond_4a3
    move v0, v11

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x42c8

    div-float v17, v26, v27

    goto/16 :goto_41b

    .line 4735
    .end local v11           #initialScale:I
    .end local v12           #maxScale:I
    .end local v13           #minScale:I
    .end local v17           #scale:F
    .end local v18           #scaleLimit:Ljava/util/HashMap;
    .end local v24           #viewportWidth:I
    .end local v25           #width:I
    :pswitch_4ad
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;I)V

    goto/16 :goto_c

    .line 4738
    :pswitch_4be
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$3200(Landroid/webkit/WebView;)I

    move-result v26

    if-eqz v26, :cond_c

    .line 4739
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;)Z

    move-result v27

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$4100(Landroid/webkit/WebView;Z)V

    goto/16 :goto_c

    .line 4745
    :pswitch_4df
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;)Z

    move-result v5

    .line 4746
    .local v5, alreadyThere:Z
    if-eqz v5, :cond_51c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$4200(Landroid/webkit/WebView;)Z

    move-result v26

    if-eqz v26, :cond_51c

    .line 4747
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$4300(Landroid/webkit/WebView;)Landroid/webkit/WebView$FocusNode;

    move-result-object v14

    .line 4748
    .local v14, node:Landroid/webkit/WebView$FocusNode;
    move-object v0, v14

    iget-boolean v0, v0, Landroid/webkit/WebView$FocusNode;->mIsTextField:Z

    move/from16 v26, v0

    if-nez v26, :cond_50f

    move-object v0, v14

    iget-boolean v0, v0, Landroid/webkit/WebView$FocusNode;->mIsTextArea:Z

    move/from16 v26, v0

    if-eqz v26, :cond_51c

    .line 4749
    :cond_50f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)Landroid/webkit/TextDialog;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/TextDialog;->bringIntoView()V

    .line 4752
    .end local v14           #node:Landroid/webkit/WebView$FocusNode;
    :cond_51c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$1500(Landroid/webkit/WebView;)V

    goto/16 :goto_c

    .line 4755
    .end local v5           #alreadyThere:Z
    :pswitch_527
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$3200(Landroid/webkit/WebView;)I

    move-result v26

    if-eqz v26, :cond_c

    .line 4756
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$4400(Landroid/webkit/WebView;)V

    goto/16 :goto_c

    .line 4760
    :pswitch_53e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Rect;

    .line 4761
    .local v16, r:Landroid/graphics/Rect;
    if-nez v16, :cond_553

    .line 4762
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_c

    .line 4766
    :cond_553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    invoke-static/range {v26 .. v30}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_c

    .line 4771
    .end local v16           #r:Landroid/graphics/Rect;
    :pswitch_576
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/util/HashMap;

    .line 4772
    .local v7, data:Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)Landroid/webkit/TextDialog;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/webkit/TextDialog;->isSameTextField(I)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 4773
    const-string v26, "adapter"

    move-object v0, v7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/TextDialog$AutoCompleteAdapter;

    .line 4775
    .local v4, adapter:Landroid/webkit/TextDialog$AutoCompleteAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)Landroid/webkit/TextDialog;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/webkit/TextDialog;->setAdapterCustom(Landroid/webkit/TextDialog$AutoCompleteAdapter;)V

    goto/16 :goto_c

    .line 4779
    .end local v4           #adapter:Landroid/webkit/TextDialog$AutoCompleteAdapter;
    .end local v7           #data:Ljava/util/HashMap;
    :pswitch_5b0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 4784
    .local v20, str:Ljava/lang/String;
    :try_start_5b8
    const-string v26, "clipboard"

    invoke-static/range {v26 .. v26}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v6

    .line 4786
    .local v6, clip:Landroid/text/IClipboard;
    move-object v0, v6

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_5c8
    .catch Landroid/os/RemoteException; {:try_start_5b8 .. :try_end_5c8} :catch_5ca

    goto/16 :goto_c

    .line 4787
    .end local v6           #clip:Landroid/text/IClipboard;
    :catch_5ca
    move-exception v26

    move-object/from16 v9, v26

    .line 4788
    .local v9, e:Landroid/os/RemoteException;
    const-string v26, "webview"

    const-string v27, "Clipboard failed"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 4792
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v20           #str:Ljava/lang/String;
    :pswitch_5db
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebViewCore;->resumeUpdate(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_c

    .line 4798
    :pswitch_5ea
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$4602(Landroid/webkit/WebView;Z)Z

    .line 4799
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$4702(Landroid/webkit/WebView;Z)Z

    .line 4804
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    if-eqz v26, :cond_c

    .line 4805
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_c

    .line 4810
    :pswitch_617
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    if-eqz v27, :cond_62c

    const/16 v27, 0x1

    :goto_627
    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$4802(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_c

    :cond_62c
    const/16 v27, 0x0

    goto :goto_627

    .line 4814
    :pswitch_62f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    if-nez v26, :cond_c

    .line 4815
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_669

    const/16 v27, 0x1

    :goto_64d
    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$1402(Landroid/webkit/WebView;Z)Z

    .line 4816
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/webkit/WebView;->access$1400(Landroid/webkit/WebView;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 4817
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v26, v0

    const/16 v27, 0x7

    invoke-static/range {v26 .. v27}, Landroid/webkit/WebView;->access$1202(Landroid/webkit/WebView;I)I

    goto/16 :goto_c

    .line 4815
    :cond_669
    const/16 v27, 0x0

    goto :goto_64d

    .line 4551
    :pswitch_data_66c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_44
        :pswitch_6b
        :pswitch_93
        :pswitch_9
        :pswitch_576
        :pswitch_ca
        :pswitch_5db
        :pswitch_9
        :pswitch_127
        :pswitch_eb
        :pswitch_167
        :pswitch_10e
        :pswitch_17e
        :pswitch_4df
        :pswitch_2c6
        :pswitch_2d7
        :pswitch_372
        :pswitch_527
        :pswitch_4be
        :pswitch_4ad
        :pswitch_5b0
        :pswitch_5ea
        :pswitch_62f
        :pswitch_617
        :pswitch_53e
    .end packed-switch
.end method
