.class Lcom/android/phone/CallCostsSetting$1;
.super Landroid/os/Handler;
.source "CallCostsSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCostsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCostsSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCostsSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/phone/CallCostsSetting$1;->this$0:Lcom/android/phone/CallCostsSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 148
    const-string v3, "nodebug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CCS>mFDNHandler: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 169
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_7e

    .line 201
    :goto_24
    return-void

    .line 171
    :sswitch_25
    iget-object v3, p0, Lcom/android/phone/CallCostsSetting$1;->this$0:Lcom/android/phone/CallCostsSetting;

    invoke-static {v3}, Lcom/android/phone/CallCostsSetting;->access$000(Lcom/android/phone/CallCostsSetting;)V

    .line 172
    iget-object v3, p0, Lcom/android/phone/CallCostsSetting$1;->this$0:Lcom/android/phone/CallCostsSetting;

    invoke-static {v3, v6}, Lcom/android/phone/CallCostsSetting;->access$102(Lcom/android/phone/CallCostsSetting;I)I

    goto :goto_24

    .line 177
    :sswitch_30
    iget-object v3, p0, Lcom/android/phone/CallCostsSetting$1;->this$0:Lcom/android/phone/CallCostsSetting;

    invoke-static {v3}, Lcom/android/phone/CallCostsSetting;->access$200(Lcom/android/phone/CallCostsSetting;)V

    .line 178
    iget-object v3, p0, Lcom/android/phone/CallCostsSetting$1;->this$0:Lcom/android/phone/CallCostsSetting;

    invoke-static {v3, v6}, Lcom/android/phone/CallCostsSetting;->access$302(Lcom/android/phone/CallCostsSetting;I)I

    goto :goto_24

    .line 184
    :sswitch_3b
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/CallCostsSetting$1;->this$0:Lcom/android/phone/CallCostsSetting;

    const-class v4, Lcom/android/phone/CallCostsSetCost;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v1, intent1:Landroid/content/Intent;
    const-string v3, "unit_price"

    iget-object v4, p0, Lcom/android/phone/CallCostsSetting$1;->this$0:Lcom/android/phone/CallCostsSetting;

    invoke-static {v4}, Lcom/android/phone/CallCostsSetting;->access$400(Lcom/android/phone/CallCostsSetting;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v3, "unit_currency"

    iget-object v4, p0, Lcom/android/phone/CallCostsSetting$1;->this$0:Lcom/android/phone/CallCostsSetting;

    invoke-static {v4}, Lcom/android/phone/CallCostsSetting;->access$500(Lcom/android/phone/CallCostsSetting;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v3, p0, Lcom/android/phone/CallCostsSetting$1;->this$0:Lcom/android/phone/CallCostsSetting;

    const/16 v4, 0x64

    invoke-virtual {v3, v1, v4}, Lcom/android/phone/CallCostsSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_24

    .line 194
    .end local v1           #intent1:Landroid/content/Intent;
    :sswitch_62
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/CallCostsSetting$1;->this$0:Lcom/android/phone/CallCostsSetting;

    const-class v4, Lcom/android/phone/CallCostsSetLimit;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v2, intent2:Landroid/content/Intent;
    const-string v3, "unit_limit"

    iget-object v4, p0, Lcom/android/phone/CallCostsSetting$1;->this$0:Lcom/android/phone/CallCostsSetting;

    invoke-static {v4}, Lcom/android/phone/CallCostsSetting;->access$600(Lcom/android/phone/CallCostsSetting;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    iget-object v3, p0, Lcom/android/phone/CallCostsSetting$1;->this$0:Lcom/android/phone/CallCostsSetting;

    const/16 v4, 0xc8

    invoke-virtual {v3, v2, v4}, Lcom/android/phone/CallCostsSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_24

    .line 169
    :sswitch_data_7e
    .sparse-switch
        0x64 -> :sswitch_25
        0xc8 -> :sswitch_30
        0x12c -> :sswitch_3b
        0x190 -> :sswitch_62
    .end sparse-switch
.end method
