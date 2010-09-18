.class Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool$2;
.super Ljava/lang/Object;
.source "AudioCalTool.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool$2;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    .line 123
    const-string v0, "[Junyoub]"

    const-string v1, "Done is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Landroid/media/AudioSystem;->writeEFS()I

    move-result v0

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->access$002(I)I

    .line 125
    invoke-static {}, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->access$000()I

    move-result v0

    if-ne v0, v2, :cond_22

    .line 127
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool$2;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;

    const v1, 0x7f08012e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    :goto_21
    return-void

    .line 131
    :cond_22
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool$2;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;

    const v1, 0x7f08012f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_21
.end method
