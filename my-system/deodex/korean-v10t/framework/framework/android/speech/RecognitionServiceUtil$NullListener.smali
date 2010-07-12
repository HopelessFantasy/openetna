.class public Landroid/speech/RecognitionServiceUtil$NullListener;
.super Landroid/speech/IRecognitionListener$Stub;
.source "RecognitionServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/speech/IRecognitionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 2
    .parameter "buf"

    .prologue
    .line 81
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 1

    .prologue
    .line 82
    return-void
.end method

.method public onError(I)V
    .registers 2
    .parameter "error"

    .prologue
    .line 83
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 2
    .parameter "bundle"

    .prologue
    .line 78
    return-void
.end method

.method public onResults(Ljava/util/List;J)V
    .registers 4
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/speech/RecognitionResult;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Landroid/speech/RecognitionResult;>;"
    return-void
.end method

.method public onRmsChanged(F)V
    .registers 2
    .parameter "rmsdB"

    .prologue
    .line 80
    return-void
.end method
