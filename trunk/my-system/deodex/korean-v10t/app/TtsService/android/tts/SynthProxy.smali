.class public Landroid/tts/SynthProxy;
.super Ljava/lang/Object;
.source "SynthProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SynthProxy"


# instance fields
.field private mJniData:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 142
    const-string v0, "ttssynthproxy"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "nativeSoLib"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    .line 43
    const-string v0, "TTS is loading"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Landroid/tts/SynthProxy;->native_setup(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private final native native_finalize(I)V
.end method

.method private final native native_getLanguage(I)[Ljava/lang/String;
.end method

.method private final native native_getRate(I)I
.end method

.method private final native native_isLanguageAvailable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native native_loadLanguage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native native_setLanguage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native native_setPitch(II)I
.end method

.method private final native native_setSpeechRate(II)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method private final native native_shutdown(I)V
.end method

.method private final native native_speak(ILjava/lang/String;I)I
.end method

.method private final native native_stop(I)I
.end method

.method private final native native_synthesizeToFile(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static postNativeSpeechSynthesizedInJava(Ljava/lang/Object;II)V
    .registers 7
    .parameter "tts_ref"
    .parameter "bufferPointer"
    .parameter "bufferSize"

    .prologue
    .line 190
    const-string v1, "TTS plugin debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bufferPointer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bufferSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/tts/SynthProxy;

    .line 196
    .local v0, nativeTTS:Landroid/tts/SynthProxy;
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0}, Landroid/tts/SynthProxy;->native_finalize(I)V

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    .line 139
    return-void
.end method

.method public getLanguage()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0}, Landroid/tts/SynthProxy;->native_getLanguage(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRate()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0}, Landroid/tts/SynthProxy;->native_getRate(I)I

    move-result v0

    return v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "language"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 80
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/tts/SynthProxy;->native_isLanguageAvailable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "language"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 94
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/tts/SynthProxy;->native_loadLanguage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "language"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 87
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/tts/SynthProxy;->native_setLanguage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final setPitch(I)I
    .registers 3
    .parameter "pitch"

    .prologue
    .line 108
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0, p1}, Landroid/tts/SynthProxy;->native_setPitch(II)I

    move-result v0

    return v0
.end method

.method public final setSpeechRate(I)I
    .registers 3
    .parameter "speechRate"

    .prologue
    .line 101
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0, p1}, Landroid/tts/SynthProxy;->native_setSpeechRate(II)I

    move-result v0

    return v0
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0}, Landroid/tts/SynthProxy;->native_shutdown(I)V

    .line 130
    return-void
.end method

.method public speak(Ljava/lang/String;I)I
    .registers 6
    .parameter "text"
    .parameter "streamType"

    .prologue
    .line 58
    const/4 v0, -0x1

    if-le p2, v0, :cond_10

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    if-ge p2, v0, :cond_10

    .line 59
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0, p1, p2}, Landroid/tts/SynthProxy;->native_speak(ILjava/lang/String;I)I

    move-result v0

    .line 62
    :goto_f
    return v0

    .line 61
    :cond_10
    const-string v0, "SynthProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to speak with invalid stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, p1, v1}, Landroid/tts/SynthProxy;->native_speak(ILjava/lang/String;I)I

    move-result v0

    goto :goto_f
.end method

.method public stop()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0}, Landroid/tts/SynthProxy;->native_stop(I)I

    move-result v0

    return v0
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "text"
    .parameter "filename"

    .prologue
    .line 72
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0, p1, p2}, Landroid/tts/SynthProxy;->native_synthesizeToFile(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
