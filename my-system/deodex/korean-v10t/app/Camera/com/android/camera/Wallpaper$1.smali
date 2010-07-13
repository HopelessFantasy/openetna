.class Lcom/android/camera/Wallpaper$1;
.super Landroid/os/Handler;
.source "Wallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Wallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Wallpaper;


# direct methods
.method constructor <init>(Lcom/android/camera/Wallpaper;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/camera/Wallpaper$1;->this$0:Lcom/android/camera/Wallpaper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 60
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_30

    .line 74
    :goto_5
    return-void

    .line 62
    :pswitch_6
    iget-object v1, p0, Lcom/android/camera/Wallpaper$1;->this$0:Lcom/android/camera/Wallpaper;

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Lcom/android/camera/Wallpaper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 63
    .local v0, c:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/camera/Wallpaper$1;->this$0:Lcom/android/camera/Wallpaper;

    iget-object v2, p0, Lcom/android/camera/Wallpaper$1;->this$0:Lcom/android/camera/Wallpaper;

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v0, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Wallpaper;->access$002(Lcom/android/camera/Wallpaper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_5

    .line 68
    .end local v0           #c:Ljava/lang/CharSequence;
    :pswitch_1f
    iget-object v1, p0, Lcom/android/camera/Wallpaper$1;->this$0:Lcom/android/camera/Wallpaper;

    invoke-static {v1}, Lcom/android/camera/Wallpaper;->access$100(Lcom/android/camera/Wallpaper;)V

    .line 69
    iget-object v1, p0, Lcom/android/camera/Wallpaper$1;->this$0:Lcom/android/camera/Wallpaper;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/Wallpaper;->setResult(I)V

    .line 70
    iget-object v1, p0, Lcom/android/camera/Wallpaper$1;->this$0:Lcom/android/camera/Wallpaper;

    invoke-virtual {v1}, Lcom/android/camera/Wallpaper;->finish()V

    goto :goto_5

    .line 60
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1f
    .end packed-switch
.end method
