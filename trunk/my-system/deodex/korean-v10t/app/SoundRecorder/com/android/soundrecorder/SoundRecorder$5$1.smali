.class Lcom/android/soundrecorder/SoundRecorder$5$1;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorder$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/soundrecorder/SoundRecorder$5;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorder$5;)V
    .registers 2
    .parameter

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$5$1;->this$1:Lcom/android/soundrecorder/SoundRecorder$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "d"
    .parameter "w"

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$5$1;->this$1:Lcom/android/soundrecorder/SoundRecorder$5;

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder$5;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    .line 1102
    return-void
.end method
