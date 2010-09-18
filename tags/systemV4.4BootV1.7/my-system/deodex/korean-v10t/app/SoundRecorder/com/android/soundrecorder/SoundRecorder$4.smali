.class Lcom/android/soundrecorder/SoundRecorder$4;
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
    .line 750
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 752
    const/4 v3, 0x0

    .line 753
    .local v3, message:Ljava/lang/String;
    const/4 v2, 0x0

    .line 754
    .local v2, fileName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 756
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v6, v6, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v6}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v0

    .line 757
    .local v0, currentFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 759
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v6, v6, Lcom/android/soundrecorder/SoundRecorder;->ringUri:Landroid/net/Uri;

    if-nez v6, :cond_29

    .line 761
    :try_start_17
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v7, v7, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v7}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/soundrecorder/SoundRecorder;->access$200(Lcom/android/soundrecorder/SoundRecorder;Ljava/io/File;)Landroid/net/Uri;
    :try_end_24
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_17 .. :try_end_24} :catch_41

    move-result-object v5

    .line 766
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iput-object v5, v6, Lcom/android/soundrecorder/SoundRecorder;->ringUri:Landroid/net/Uri;

    .line 768
    :cond_29
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-virtual {v6}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 769
    .local v4, resolver:Landroid/content/ContentResolver;
    packed-switch p2, :pswitch_data_82

    .line 783
    :goto_32
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-static {v6, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 784
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-virtual {v6}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    .line 785
    .end local v4           #resolver:Landroid/content/ContentResolver;
    :goto_40
    return-void

    .line 763
    :catch_41
    move-exception v6

    move-object v1, v6

    .line 764
    .local v1, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_40

    .line 772
    .end local v1           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    :pswitch_44
    const-string v6, "ringtone"

    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v7, v7, Lcom/android/soundrecorder/SoundRecorder;->ringUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 774
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-virtual {v6}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f04002a

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 775
    goto :goto_32

    .line 777
    :pswitch_63
    const-string v6, "notification_sound"

    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v7, v7, Lcom/android/soundrecorder/SoundRecorder;->ringUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 779
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-virtual {v6}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f04002b

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_32

    .line 769
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_44
        :pswitch_63
    .end packed-switch
.end method
