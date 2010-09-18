.class Lcom/android/settings/RadioInfo$21;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/android/settings/RadioInfo$21;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 1124
    iget-object v1, p0, Lcom/android/settings/RadioInfo$21;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$4000(Lcom/android/settings/RadioInfo;)Lcom/android/settings/RadioInfo$OemCommands;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RadioInfo$21;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$1800(Lcom/android/settings/RadioInfo;)Z

    move-result v2

    if-nez v2, :cond_36

    const/4 v2, 0x1

    :goto_10
    iget-object v3, p0, Lcom/android/settings/RadioInfo$21;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v3}, Lcom/android/settings/RadioInfo;->access$4000(Lcom/android/settings/RadioInfo;)Lcom/android/settings/RadioInfo$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x20

    iget-object v4, p0, Lcom/android/settings/RadioInfo$21;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v4}, Lcom/android/settings/RadioInfo;->access$4000(Lcom/android/settings/RadioInfo;)Lcom/android/settings/RadioInfo$OemCommands;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/android/settings/RadioInfo$21;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v4}, Lcom/android/settings/RadioInfo;->access$4000(Lcom/android/settings/RadioInfo;)Lcom/android/settings/RadioInfo$OemCommands;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/settings/RadioInfo$OemCommands;->getQxdmSdlogData(ZIII)[B

    move-result-object v0

    .line 1130
    .local v0, data:[B
    if-nez v0, :cond_38

    .line 1135
    :goto_35
    return-void

    .end local v0           #data:[B
    :cond_36
    move v2, v5

    .line 1124
    goto :goto_10

    .line 1133
    .restart local v0       #data:[B
    :cond_38
    iget-object v1, p0, Lcom/android/settings/RadioInfo$21;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1500(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RadioInfo$21;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$4200(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_35
.end method
