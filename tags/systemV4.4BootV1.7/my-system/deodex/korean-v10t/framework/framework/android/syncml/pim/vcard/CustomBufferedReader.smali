.class Landroid/syncml/pim/vcard/CustomBufferedReader;
.super Ljava/io/BufferedReader;
.source "VCardParser_V21.java"


# instance fields
.field private mTime:J


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 960
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 961
    return-void
.end method


# virtual methods
.method public getTotalmillisecond()J
    .registers 3

    .prologue
    .line 973
    iget-wide v0, p0, Landroid/syncml/pim/vcard/CustomBufferedReader;->mTime:J

    return-wide v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 965
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 966
    .local v3, start:J
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 967
    .local v2, ret:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 968
    .local v0, end:J
    iget-wide v5, p0, Landroid/syncml/pim/vcard/CustomBufferedReader;->mTime:J

    sub-long v7, v0, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Landroid/syncml/pim/vcard/CustomBufferedReader;->mTime:J

    .line 969
    return-object v2
.end method
