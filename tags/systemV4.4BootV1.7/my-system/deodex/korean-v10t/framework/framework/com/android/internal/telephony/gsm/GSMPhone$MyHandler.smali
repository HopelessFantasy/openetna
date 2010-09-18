.class Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;
.super Landroid/os/Handler;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 2
    .parameter

    .prologue
    .line 2193
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2194
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "l"

    .prologue
    .line 2196
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 2197
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2198
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 28
    .parameter "msg"

    .prologue
    .line 2205
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_860

    .line 2659
    .end local p0
    .end local p1
    :cond_9
    :goto_9
    :sswitch_9
    return-void

    .line 2214
    .restart local p0
    .restart local p1
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 2215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    const/16 v22, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 2218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getModemVersion(Landroid/os/Message;)V

    .line 2219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getHWVersion(Landroid/os/Message;)V

    .line 2220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getFactoryVersion(Landroid/os/Message;)V

    goto :goto_9

    .line 2229
    :sswitch_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->syncClirSetting()V

    goto/16 :goto_9

    .line 2234
    :sswitch_93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$100(Lcom/android/internal/telephony/gsm/GSMPhone;)Ljava/lang/String;

    move-result-object v16

    .line 2235
    .local v16, oldiccid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSimEfIccid()Ljava/lang/String;

    move-result-object v13

    .line 2236
    .local v13, newiccid:Ljava/lang/String;
    const-string v21, "GSMPhone"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "old iccid:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/ new iccid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    if-nez v16, :cond_171

    .line 2240
    if-nez v13, :cond_132

    .line 2242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->isSimChanged:Z

    .line 2243
    const-string v21, "GSMPhone"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SIM is not inserted yet since image is downloaded. isSimChanged = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->isSimChanged:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    :goto_106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->isSimChanged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_224

    .line 2277
    new-instance v10, Landroid/content/Intent;

    const-string v21, "android.intent.action.SIM_CHANGED_INFO"

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2278
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 2247
    .end local v10           #intent:Landroid/content/Intent;
    :cond_132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$200(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)V

    .line 2248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->isSimChanged:Z

    .line 2249
    const-string v21, "GSMPhone"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "This is the first normal booting. isSimChanged = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->isSimChanged:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    .line 2254
    :cond_171
    if-nez v13, :cond_1a7

    .line 2256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->isSimChanged:Z

    .line 2257
    const-string v21, "GSMPhone"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "No SIM booting since the normal booting is done. isSimChanged = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->isSimChanged:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_106

    .line 2261
    :cond_1a7
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1f0

    .line 2263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$200(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)V

    .line 2264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->isSimChanged:Z

    .line 2265
    const-string v21, "GSMPhone"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SIM is changed. isSimChanged = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->isSimChanged:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_106

    .line 2269
    :cond_1f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->isSimChanged:Z

    .line 2270
    const-string v21, "GSMPhone"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SIM is NOT changed. isSimChanged = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->isSimChanged:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_106

    .line 2282
    :cond_224
    new-instance v10, Landroid/content/Intent;

    const-string v21, "android.intent.action.SIM_NOT_CHANGED_INFO"

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2283
    .restart local v10       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 2289
    .end local v10           #intent:Landroid/content/Intent;
    .end local v13           #newiccid:Ljava/lang/String;
    .end local v16           #oldiccid:Ljava/lang/String;
    :sswitch_242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 2293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$300(Lcom/android/internal/telephony/gsm/GSMPhone;)Ljava/lang/String;

    move-result-object v8

    .line 2294
    .local v8, imsi:Ljava/lang/String;
    if-eqz v8, :cond_280

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_280

    .line 2295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$400(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)V

    .line 2296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$500(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)V

    .line 2343
    :cond_280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    const/16 v22, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getLineSelectInfo(Landroid/os/Message;)V

    .line 2347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.intent.action.FDN_QUERY"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 2354
    .end local v8           #imsi:Ljava/lang/String;
    :sswitch_2ab
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2356
    .local v4, ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    .line 2360
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Baseband version: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    const-string v22, "gsm.version.baseband"

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2365
    .end local v4           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :sswitch_2f0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2367
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    .line 2371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$602(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_9

    .line 2375
    .end local v4           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :sswitch_314
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2377
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$702(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_9

    .line 2386
    .end local v4           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :sswitch_338
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2388
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$802(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_9

    .line 2396
    .end local v4           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :sswitch_35c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2398
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    .line 2402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$902(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_9

    .line 2406
    .end local v4           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :sswitch_380
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2408
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    .line 2412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$1002(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_9

    .line 2416
    .end local v4           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :sswitch_3a4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2418
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    .line 2419
    .local v17, onComplete:Landroid/os/Message;
    if-eqz v17, :cond_9

    .line 2420
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2421
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    .line 2427
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v17           #onComplete:Landroid/os/Message;
    :sswitch_3cc
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2429
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2431
    .local v20, ussdResult:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    .line 2433
    :try_start_3ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v20, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x1

    aget-object v23, v20, v23

    invoke-static/range {v21 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$1100(Lcom/android/internal/telephony/gsm/GSMPhone;ILjava/lang/String;)V
    :try_end_402
    .catch Ljava/lang/NumberFormatException; {:try_start_3ed .. :try_end_402} :catch_404

    goto/16 :goto_9

    .line 2434
    :catch_404
    move-exception v21

    move-object/from16 v5, v21

    .line 2435
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v21, "GSM"

    const-string v22, "error parsing USSD"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2446
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local v20           #ussdResult:[Ljava/lang/String;
    .restart local p1
    :sswitch_410
    const/4 v7, 0x0

    .local v7, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v19

    .end local p1
    .local v19, s:I
    :goto_421
    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 2447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v21

    if-eqz v21, :cond_459

    .line 2448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 2446
    :cond_459
    add-int/lit8 v7, v7, 0x1

    goto :goto_421

    .line 2454
    .end local v7           #i:I
    .end local v19           #s:I
    .restart local p1
    :sswitch_45c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2455
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v14, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 2456
    .local v14, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_9

    .line 2460
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v14           #not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :sswitch_47b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2461
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_4b2

    .line 2464
    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$1200()I

    move-result v21

    if-nez v21, :cond_4d6

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4d3

    const/16 v23, 0x1

    :goto_4ad
    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZZ)V

    .line 2473
    :cond_4b2
    :goto_4b2
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    .line 2474
    .restart local v17       #onComplete:Landroid/os/Message;
    if-eqz v17, :cond_9

    .line 2475
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2476
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    .line 2465
    .end local v17           #onComplete:Landroid/os/Message;
    :cond_4d3
    const/16 v23, 0x0

    goto :goto_4ad

    .line 2466
    :cond_4d6
    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$1200()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_509

    .line 2467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_506

    const/16 v24, 0x1

    :goto_502
    invoke-virtual/range {v21 .. v24}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZZ)V

    goto :goto_4b2

    :cond_506
    const/16 v24, 0x0

    goto :goto_502

    .line 2469
    :cond_509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_52b

    const/16 v23, 0x1

    :goto_527
    invoke-virtual/range {v21 .. v23}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZ)V

    goto :goto_4b2

    :cond_52b
    const/16 v23, 0x0

    goto :goto_527

    .line 2481
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_52e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2482
    .restart local v4       #ar:Landroid/os/AsyncResult;
    const-class v21, Lcom/android/internal/telephony/IccVmNotSupportedException;

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_55c

    .line 2483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$1300(Lcom/android/internal/telephony/gsm/GSMPhone;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$400(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)V

    .line 2484
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2486
    :cond_55c
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    .line 2487
    .restart local v17       #onComplete:Landroid/os/Message;
    if-eqz v17, :cond_9

    .line 2488
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2489
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    .line 2495
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v17           #onComplete:Landroid/os/Message;
    :sswitch_57d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2496
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_5a1

    .line 2497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, [Lcom/android/internal/telephony/CallForwardInfo;

    check-cast p0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$1400(Lcom/android/internal/telephony/gsm/GSMPhone;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 2499
    :cond_5a1
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    .line 2500
    .restart local v17       #onComplete:Landroid/os/Message;
    if-eqz v17, :cond_9

    .line 2501
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2502
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    .line 2507
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v17           #onComplete:Landroid/os/Message;
    .restart local p0
    :sswitch_5c2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2508
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    .line 2509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyIncomingRing()V

    goto/16 :goto_9

    .line 2521
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_5db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$1500(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/os/AsyncResult;)V

    goto/16 :goto_9

    .line 2525
    .restart local p0
    :sswitch_5f2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2526
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_60f

    .line 2527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    .line 2529
    :cond_60f
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    .line 2530
    .restart local v17       #onComplete:Landroid/os/Message;
    if-eqz v17, :cond_9

    .line 2531
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2532
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    .line 2539
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v17           #onComplete:Landroid/os/Message;
    :sswitch_630
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2540
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    .line 2544
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    if-eqz v21, :cond_66b

    .line 2545
    const-string v21, "[GSMPhone]"

    const-string v22, "[EVENT_GET_ENGINEERING_MODE_INFO_DONE] EmodeInfo = not NULL"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$1602(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;

    .line 2547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->makeEngineeringModeInfo()V

    goto/16 :goto_9

    .line 2550
    .restart local p1
    :cond_66b
    const-string v21, "[GSMPhone]"

    const-string v22, "[EVENT_GET_ENGINEERING_MODE_INFO_DONE] EmodeInfo = NULL"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2559
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_674
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2561
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    .line 2565
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6c1

    .line 2566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$1702(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;

    .line 2567
    const-string v21, "[GSMPhone]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[EVENT_GO_FAST_DORMANCY_DONE] GO_FAST_DORMANCY_RESPONSE = not NULL, response: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$1700(Lcom/android/internal/telephony/gsm/GSMPhone;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2573
    .restart local p1
    :cond_6c1
    const-string v21, "[GSMPhone]"

    const-string v22, "[EVENT_GO_FAST_DORMANCY_DONE] GO_FAST_DORMANCY_RESPONSE = NULL"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2581
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_6ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    const/16 v22, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getLineSelectInfo(Landroid/os/Message;)V

    goto/16 :goto_9

    .line 2584
    :sswitch_6df
    const/4 v12, 0x2

    .line 2586
    .local v12, lineInfo:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2587
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_742

    .line 2588
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v18, v0

    .line 2589
    .local v18, result:[I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_734

    .line 2591
    const/16 v21, 0x0

    aget v21, v18, v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_734

    .line 2592
    const/16 v21, 0x0

    aget v12, v18, v21

    .line 2593
    new-instance v10, Landroid/content/Intent;

    const-string v21, "android.intent.action.ALS_STATE_CHANGED"

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2594
    .restart local v10       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2600
    .end local v10           #intent:Landroid/content/Intent;
    .end local v18           #result:[I
    :cond_734
    :goto_734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeALSSettingValue(I)V

    goto/16 :goto_9

    .line 2598
    .restart local p1
    :cond_742
    const/16 v21, 0x21

    const-wide/16 v22, 0x2710

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_734

    .line 2607
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v12           #lineInfo:I
    :sswitch_750
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2608
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    .line 2609
    new-instance v9, Lcom/android/internal/telephony/gsm/CallProgressIndication;

    invoke-direct {v9}, Lcom/android/internal/telephony/gsm/CallProgressIndication;-><init>()V

    .line 2610
    .local v9, ind:Lcom/android/internal/telephony/gsm/CallProgressIndication;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object v11, v0

    .line 2612
    .local v11, ints:[I
    move-object v0, v11

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_792

    .line 2613
    const/16 v21, 0x0

    aget v21, v11, v21

    move/from16 v0, v21

    move-object v1, v9

    iput v0, v1, Lcom/android/internal/telephony/gsm/CallProgressIndication;->call_progress:I

    .line 2617
    :goto_784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$1800(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/CallProgressIndication;)V

    goto/16 :goto_9

    .line 2615
    :cond_792
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object v1, v9

    iput v0, v1, Lcom/android/internal/telephony/gsm/CallProgressIndication;->call_progress:I

    goto :goto_784

    .line 2624
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v9           #ind:Lcom/android/internal/telephony/gsm/CallProgressIndication;
    .end local v11           #ints:[I
    .restart local p1
    :sswitch_79a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2625
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    .line 2626
    iget-object v15, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 2627
    .local v15, number:Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    const-string v21, "android.intent.action.CALL_PRIVILEGED"

    const-string v22, "tel"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v15

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object v0, v10

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2628
    .restart local v10       #intent:Landroid/content/Intent;
    const/high16 v21, 0x1000

    move-object v0, v10

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2630
    const-string v21, "nodebug"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "GSMPhone>EVENT_ORIG_MOD_TO_SS:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 2639
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v15           #number:Ljava/lang/String;
    :sswitch_7fc
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2640
    .restart local v4       #ar:Landroid/os/AsyncResult;
    const/4 v6, 0x0

    .line 2641
    .local v6, eonsNWNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfo;>;"
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    .line 2642
    .restart local v17       #onComplete:Landroid/os/Message;
    if-eqz v17, :cond_857

    .line 2643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v21, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEonsAvailableNetworks(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 2645
    if-eqz v6, :cond_843

    .line 2646
    const-string v21, "GSM"

    const-string v22, "In EVENT_GET_NETWORKS_DONE, populated EONS names"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2652
    :goto_83e
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    .line 2650
    :cond_843
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_83e

    .line 2655
    .restart local p0
    :cond_857
    const-string v21, "GSM"

    const-string v22, "In EVENT_GET_NETWORKS_DONE, onComplete is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2205
    :sswitch_data_860
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_45c
        0x3 -> :sswitch_242
        0x5 -> :sswitch_9
        0x6 -> :sswitch_2ab
        0x7 -> :sswitch_3cc
        0x8 -> :sswitch_410
        0x9 -> :sswitch_2f0
        0xa -> :sswitch_314
        0xc -> :sswitch_47b
        0xd -> :sswitch_57d
        0xe -> :sswitch_5c2
        0xf -> :sswitch_5db
        0x10 -> :sswitch_5db
        0x11 -> :sswitch_5f2
        0x12 -> :sswitch_88
        0x13 -> :sswitch_52e
        0x14 -> :sswitch_338
        0x15 -> :sswitch_380
        0x16 -> :sswitch_35c
        0x17 -> :sswitch_3a4
        0x1f -> :sswitch_630
        0x20 -> :sswitch_6df
        0x21 -> :sswitch_6ca
        0x22 -> :sswitch_5db
        0x24 -> :sswitch_93
        0x25 -> :sswitch_9
        0x26 -> :sswitch_750
        0x27 -> :sswitch_79a
        0x28 -> :sswitch_674
        0xc8 -> :sswitch_7fc
    .end sparse-switch
.end method
