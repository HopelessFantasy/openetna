.class Lcom/android/soundrecorder/SoundRecorder$3;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorder;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorder;)V
    .registers 2
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "d"
    .parameter "w"

    .prologue
    const/4 v2, 0x0

    .line 730
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v1, v1, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->delete()V

    .line 731
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v1, v1, Lcom/android/soundrecorder/SoundRecorder;->ringUri:Landroid/net/Uri;

    if-eqz v1, :cond_1b

    .line 733
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 734
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v1, v1, Lcom/android/soundrecorder/SoundRecorder;->ringUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 736
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_1b
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder$3;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    .line 737
    return-void
.end method
