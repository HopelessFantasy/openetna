.class Lcom/android/settings/RadioInfo$16;
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
    .line 1082
    iput-object p1, p0, Lcom/android/settings/RadioInfo$16;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/android/settings/RadioInfo$16;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v2, p0, Lcom/android/settings/RadioInfo$16;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$3900(Lcom/android/settings/RadioInfo;)Z

    move-result v2

    if-nez v2, :cond_21

    const/4 v2, 0x1

    :goto_b
    invoke-static {v1, v2}, Lcom/android/settings/RadioInfo;->access$2102(Lcom/android/settings/RadioInfo;Z)Z

    .line 1084
    iget-object v1, p0, Lcom/android/settings/RadioInfo$16;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$4000(Lcom/android/settings/RadioInfo;)Lcom/android/settings/RadioInfo$OemCommands;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RadioInfo$16;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$2100(Lcom/android/settings/RadioInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/RadioInfo$OemCommands;->getCipheringData(Z)[B

    move-result-object v0

    .line 1086
    .local v0, data:[B
    if-nez v0, :cond_23

    .line 1092
    :goto_20
    return-void

    .line 1083
    .end local v0           #data:[B
    :cond_21
    const/4 v2, 0x0

    goto :goto_b

    .line 1089
    .restart local v0       #data:[B
    :cond_23
    iget-object v1, p0, Lcom/android/settings/RadioInfo$16;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$4100(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Setting..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    iget-object v1, p0, Lcom/android/settings/RadioInfo$16;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1500(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RadioInfo$16;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$4200(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_20
.end method
