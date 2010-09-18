.class Lcom/android/phone/CallFeaturesSetting$5;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 599
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/16 v4, 0x64

    .line 600
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 601
    .local v0, ar:Landroid/os/AsyncResult;
    const/16 v2, 0x64

    .line 603
    .local v2, status:I
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_74

    .line 676
    :cond_d
    :goto_d
    return-void

    .line 607
    :sswitch_e
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/phone/CallFeaturesSetting;->access$500(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)I

    move-result v2

    .line 611
    const-string v3, "mGetAllOptionsComplete: CLIR query done, querying CW."

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$1000(Ljava/lang/String;)V

    .line 615
    if-eq v2, v4, :cond_27

    .line 618
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CallFeaturesSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-static {v3, v4, v2}, Lcom/android/phone/CallFeaturesSetting;->access$800(Lcom/android/phone/CallFeaturesSetting;Lcom/android/phone/CallFeaturesSetting$AppState;I)V

    goto :goto_d

    .line 623
    :cond_27
    const-string v1, "*#43#"

    .line 625
    .local v1, mmi:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/phone/CallFeaturesSetting;->checkFdn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 634
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$1500(Lcom/android/phone/CallFeaturesSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$1900()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x12c

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_d

    .line 645
    .end local v1           #mmi:Ljava/lang/String;
    :sswitch_49
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/phone/CallFeaturesSetting;->access$600(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)I

    move-result v2

    .line 649
    const-string v3, "mGetAllOptionsComplete: CW query done, all call features queried."

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$1000(Ljava/lang/String;)V

    .line 653
    if-eq v2, v4, :cond_62

    .line 656
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CallFeaturesSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-static {v3, v4, v2}, Lcom/android/phone/CallFeaturesSetting;->access$800(Lcom/android/phone/CallFeaturesSetting;Lcom/android/phone/CallFeaturesSetting$AppState;I)V

    goto :goto_d

    .line 662
    :cond_62
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->access$2002(Lcom/android/phone/CallFeaturesSetting;Z)Z

    .line 664
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->access$900(Lcom/android/phone/CallFeaturesSetting;Lcom/android/phone/CallFeaturesSetting$AppState;)V

    goto :goto_d

    .line 603
    :sswitch_data_74
    .sparse-switch
        0xc8 -> :sswitch_e
        0x12c -> :sswitch_49
    .end sparse-switch
.end method
