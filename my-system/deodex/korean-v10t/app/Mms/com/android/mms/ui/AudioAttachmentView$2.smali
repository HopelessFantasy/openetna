.class Lcom/android/mms/ui/AudioAttachmentView$2;
.super Ljava/lang/Object;
.source "AudioAttachmentView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AudioAttachmentView;->startAudio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AudioAttachmentView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AudioAttachmentView;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/mms/ui/AudioAttachmentView$2;->this$0:Lcom/android/mms/ui/AudioAttachmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView$2;->this$0:Lcom/android/mms/ui/AudioAttachmentView;

    invoke-static {v0}, Lcom/android/mms/ui/AudioAttachmentView;->access$000(Lcom/android/mms/ui/AudioAttachmentView;)V

    .line 111
    const/4 v0, 0x1

    return v0
.end method
