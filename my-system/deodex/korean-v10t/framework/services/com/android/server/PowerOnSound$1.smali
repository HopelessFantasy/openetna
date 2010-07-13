.class Lcom/android/server/PowerOnSound$1;
.super Ljava/lang/Object;
.source "PowerOnSound.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerOnSound;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerOnSound;


# direct methods
.method constructor <init>(Lcom/android/server/PowerOnSound;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/PowerOnSound$1;->this$0:Lcom/android/server/PowerOnSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6
    .parameter "mp"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/PowerOnSound$1;->this$0:Lcom/android/server/PowerOnSound;

    invoke-static {v0}, Lcom/android/server/PowerOnSound;->access$000(Lcom/android/server/PowerOnSound;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 78
    iget-object v0, p0, Lcom/android/server/PowerOnSound$1;->this$0:Lcom/android/server/PowerOnSound;

    invoke-static {v0}, Lcom/android/server/PowerOnSound;->access$000(Lcom/android/server/PowerOnSound;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 79
    iget-object v0, p0, Lcom/android/server/PowerOnSound$1;->this$0:Lcom/android/server/PowerOnSound;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/PowerOnSound;->access$002(Lcom/android/server/PowerOnSound;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 80
    iget-object v0, p0, Lcom/android/server/PowerOnSound$1;->this$0:Lcom/android/server/PowerOnSound;

    invoke-static {v0}, Lcom/android/server/PowerOnSound;->access$200(Lcom/android/server/PowerOnSound;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/PowerOnSound$1;->this$0:Lcom/android/server/PowerOnSound;

    invoke-static {v2}, Lcom/android/server/PowerOnSound;->access$100(Lcom/android/server/PowerOnSound;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 81
    return-void
.end method
