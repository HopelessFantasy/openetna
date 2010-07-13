.class public Lorg/apache/harmony/nio/FileChannelFactory;
.super Ljava/lang/Object;
.source "FileChannelFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileChannel(Ljava/lang/Object;II)Ljava/nio/channels/FileChannel;
    .registers 5
    .parameter "stream"
    .parameter "fd"
    .parameter "mode"

    .prologue
    .line 40
    sparse-switch p2, :sswitch_data_2e

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "nio.09"

    invoke-static {v1, p2}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :sswitch_f
    new-instance v0, Lorg/apache/harmony/nio/internal/ReadOnlyFileChannel;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/nio/internal/ReadOnlyFileChannel;-><init>(Ljava/lang/Object;I)V

    .line 50
    :goto_14
    return-object v0

    .line 44
    :sswitch_15
    new-instance v0, Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;-><init>(Ljava/lang/Object;I)V

    goto :goto_14

    .line 46
    :sswitch_1b
    new-instance v0, Lorg/apache/harmony/nio/internal/ReadWriteFileChannel;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/nio/internal/ReadWriteFileChannel;-><init>(Ljava/lang/Object;I)V

    goto :goto_14

    .line 48
    :sswitch_21
    new-instance v0, Lorg/apache/harmony/nio/internal/ReadWriteFileChannel;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/nio/internal/ReadWriteFileChannel;-><init>(Ljava/lang/Object;I)V

    goto :goto_14

    .line 50
    :sswitch_27
    new-instance v0, Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;-><init>(Ljava/lang/Object;IZ)V

    goto :goto_14

    .line 40
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_f
        0x1 -> :sswitch_15
        0x10 -> :sswitch_1b
        0x20 -> :sswitch_21
        0x100 -> :sswitch_27
    .end sparse-switch
.end method
