.class Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool$1;
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
    .line 138
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool$1;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 139
    const-string v0, "[Junyoub]"

    const-string v1, "Cancel is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool$1;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;

    const v1, 0x7f08012f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 142
    return-void
.end method
