.class public Lcom/android/providers/downloads/DownloadFileInfo;
.super Ljava/lang/Object;
.source "DownloadFileInfo.java"


# instance fields
.field filename:Ljava/lang/String;

.field status:I

.field stream:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V
    .registers 4
    .parameter "filename"
    .parameter "stream"
    .parameter "status"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadFileInfo;->filename:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadFileInfo;->stream:Ljava/io/FileOutputStream;

    .line 28
    iput p3, p0, Lcom/android/providers/downloads/DownloadFileInfo;->status:I

    .line 29
    return-void
.end method
