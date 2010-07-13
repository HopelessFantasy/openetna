.class public Landroid/util/EventLogTest;
.super Ljunit/framework/TestCase;
.source "EventLogTest.java"


# static fields
.field private static final TEST_TAG:I = 0x2a


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method assertIntInByteArrayEquals(I[BI)V
    .registers 8
    .parameter "expected"
    .parameter "buf"
    .parameter "pos"

    .prologue
    .line 50
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 51
    .local v1, computedBuf:Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 52
    .local v0, computed:I
    invoke-static {p1, v0}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 53
    return-void
.end method

.method assertLongInByteArrayEquals(J[BI)V
    .registers 10
    .parameter "expected"
    .parameter "buf"
    .parameter "pos"

    .prologue
    .line 56
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 57
    .local v2, computedBuf:Ljava/nio/ByteBuffer;
    invoke-virtual {v2, p4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 58
    .local v0, computed:J
    invoke-static {p1, p2, v0, v1}, Ljunit/framework/Assert;->assertEquals(JJ)V

    .line 59
    return-void
.end method

.method assertStringInByteArrayEquals(Ljava/lang/String;[BI)V
    .registers 12
    .parameter "expected"
    .parameter "buf"
    .parameter "pos"

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 63
    .local v2, expectedBytes:[B
    array-length v6, v2

    array-length v7, p2

    sub-int/2addr v7, p3

    if-gt v6, v7, :cond_20

    const/4 v6, 0x1

    :goto_a
    invoke-static {v6}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 64
    move-object v0, v2

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v5, p3

    .end local p3
    .local v5, pos:I
    :goto_11
    if-ge v3, v4, :cond_22

    aget-byte v1, v0, v3

    .line 65
    .local v1, expectedByte:B
    add-int/lit8 p3, v5, 0x1

    .end local v5           #pos:I
    .restart local p3
    aget-byte v6, p2, v5

    invoke-static {v1, v6}, Ljunit/framework/Assert;->assertEquals(BB)V

    .line 64
    add-int/lit8 v3, v3, 0x1

    move v5, p3

    .end local p3
    .restart local v5       #pos:I
    goto :goto_11

    .line 63
    .end local v0           #arr$:[B
    .end local v1           #expectedByte:B
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #pos:I
    .restart local p3
    :cond_20
    const/4 v6, 0x0

    goto :goto_a

    .line 67
    .end local p3
    .restart local v0       #arr$:[B
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #pos:I
    :cond_22
    return-void
.end method

.method public testIllegalListTypesThrowException()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    const/16 v0, 0x2a

    :try_start_2
    new-instance v1, Landroid/util/EventLog$List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/util/EventLog$List;-><init>([Ljava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILandroid/util/EventLog$List;)I

    .line 37
    const-string v0, "Can\'t create List with any old Object"

    invoke-static {v0}, Landroid/util/EventLogTest;->fail(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_1a} :catch_37

    .line 42
    :goto_1a
    const/16 v0, 0x2a

    :try_start_1c
    new-instance v1, Landroid/util/EventLog$List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/util/EventLog$List;-><init>([Ljava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILandroid/util/EventLog$List;)I

    .line 43
    const-string v0, "Can\'t create List with any old byte"

    invoke-static {v0}, Landroid/util/EventLogTest;->fail(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_34} :catch_35

    .line 47
    :goto_34
    return-void

    .line 44
    :catch_35
    move-exception v0

    goto :goto_34

    .line 38
    :catch_37
    move-exception v0

    goto :goto_1a
.end method
