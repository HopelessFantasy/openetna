.class public final Landroid/media/MediaRecorder$AudioParamEncodingBitrate;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioParamEncodingBitrate"
.end annotation


# static fields
.field public static final AUDIO_PARAM_ENCODING_BITRATE:Ljava/lang/String; = "audio-param-encoding-bitrate="


# instance fields
.field final synthetic this$0:Landroid/media/MediaRecorder;


# direct methods
.method private constructor <init>(Landroid/media/MediaRecorder;)V
    .registers 2
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Landroid/media/MediaRecorder$AudioParamEncodingBitrate;->this$0:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
