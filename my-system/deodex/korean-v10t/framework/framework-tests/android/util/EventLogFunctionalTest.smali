.class public Landroid/util/EventLogFunctionalTest;
.super Ljunit/framework/TestCase;
.source "EventLogFunctionalTest.java"


# static fields
.field private static final STARTING_POS_OF_PAYLOAD:I = 0x5

.field private static final TAG:Ljava/lang/String; = "EventLogFunctionalTest"

.field private static final TAG_SIZE:I = 0x4

.field private static final TEST_TAG:I = 0x2a

.field private static final TEST_TAG2:I = 0x13a

.field private static final TYPE_FIELD_SIZE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public disableTestReadCompoundEntry()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 120
    .local v8, when:J
    const/16 v10, 0xa9f

    new-instance v11, Landroid/util/EventLog$List;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    new-instance v14, Landroid/util/EventLog$List;

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "2"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "three"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "4"

    aput-object v17, v15, v16

    invoke-direct {v14, v15}, Landroid/util/EventLog$List;-><init>([Ljava/lang/Object;)V

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v11, v12}, Landroid/util/EventLog$List;-><init>([Ljava/lang/Object;)V

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(ILandroid/util/EventLog$List;)I

    .line 122
    const-string v10, "EventLogFunctionalTest"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Wrote compound event at T="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/EventLog$Event;>;"
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/16 v12, 0xa9f

    aput v12, v10, v11

    invoke-static {v10, v6}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    .line 127
    const/4 v4, 0x0

    .line 128
    .local v4, found:Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_6c
    :goto_6c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_104

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/EventLog$Event;

    .line 129
    .local v1, event:Landroid/util/EventLog$Event;
    invoke-virtual {v1}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    div-long v2, v10, v12

    .line 130
    .local v2, eventTime:J
    const-string v10, "EventLogFunctionalTest"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Found event T="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-wide/16 v10, 0x64

    sub-long v10, v8, v10

    cmp-long v10, v2, v10

    if-lez v10, :cond_6c

    const-wide/16 v10, 0x3e8

    add-long/2addr v10, v8

    cmp-long v10, v2, v10

    if-gez v10, :cond_6c

    .line 132
    invoke-virtual {v1}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/EventLog$List;

    .line 133
    .local v0, data:Landroid/util/EventLog$List;
    invoke-virtual {v0}, Landroid/util/EventLog$List;->getNumItems()B

    move-result v10

    const/4 v11, 0x3

    invoke-static {v10, v11}, Landroid/util/EventLogFunctionalTest;->assertEquals(II)V

    .line 135
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/util/EventLog$List;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/EventLog$List;

    .line 136
    .local v7, nested:Landroid/util/EventLog$List;
    invoke-virtual {v7}, Landroid/util/EventLog$List;->getNumItems()B

    move-result v10

    const/4 v11, 0x3

    invoke-static {v10, v11}, Landroid/util/EventLogFunctionalTest;->assertEquals(II)V

    .line 138
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/util/EventLog$List;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v11, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/EventLogFunctionalTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/util/EventLog$List;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "2"

    invoke-static {v10, v11}, Landroid/util/EventLogFunctionalTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/util/EventLog$List;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "three"

    invoke-static {v10, v11}, Landroid/util/EventLogFunctionalTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Landroid/util/EventLog$List;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "4"

    invoke-static {v10, v11}, Landroid/util/EventLogFunctionalTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Landroid/util/EventLog$List;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/EventLogFunctionalTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    invoke-static {v4}, Landroid/util/EventLogFunctionalTest;->assertFalse(Z)V

    .line 145
    const/4 v4, 0x1

    goto/16 :goto_6c

    .line 149
    .end local v0           #data:Landroid/util/EventLog$List;
    .end local v1           #event:Landroid/util/EventLog$Event;
    .end local v2           #eventTime:J
    .end local v7           #nested:Landroid/util/EventLog$List;
    :cond_104
    invoke-static {v4}, Landroid/util/EventLogFunctionalTest;->assertTrue(Z)V

    .line 150
    return-void
.end method

.method public disableTestReadSimpleEvent()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v13, 0x3039

    const/16 v12, 0xa9e

    const-string v14, "EventLogFunctionalTest"

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 93
    .local v6, when:J
    invoke-static {v12, v13}, Landroid/util/EventLog;->writeEvent(II)I

    .line 94
    const-string v8, "EventLogFunctionalTest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrote simple event at T="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/EventLog$Event;>;"
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v12, v8, v9

    invoke-static {v8, v5}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    .line 99
    const/4 v3, 0x0

    .line 100
    .local v3, found:Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_38
    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/EventLog$Event;

    .line 101
    .local v0, event:Landroid/util/EventLog$Event;
    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v8

    invoke-static {v8, v12}, Landroid/util/EventLogFunctionalTest;->assertEquals(II)V

    .line 102
    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long v1, v8, v10

    .line 103
    .local v1, eventTime:J
    const-string v8, "EventLogFunctionalTest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Found event T="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-wide/16 v8, 0x64

    sub-long v8, v6, v8

    cmp-long v8, v1, v8

    if-lez v8, :cond_38

    const-wide/16 v8, 0x3e8

    add-long/2addr v8, v6

    cmp-long v8, v1, v8

    if-gez v8, :cond_38

    .line 105
    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getProcessId()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v8, v9}, Landroid/util/EventLogFunctionalTest;->assertEquals(II)V

    .line 106
    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getThreadId()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    invoke-static {v8, v9}, Landroid/util/EventLogFunctionalTest;->assertEquals(II)V

    .line 107
    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/EventLogFunctionalTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    invoke-static {v3}, Landroid/util/EventLogFunctionalTest;->assertFalse(Z)V

    .line 110
    const/4 v3, 0x1

    goto :goto_38

    .line 114
    .end local v0           #event:Landroid/util/EventLog$Event;
    .end local v1           #eventTime:J
    :cond_a1
    invoke-static {v3}, Landroid/util/EventLogFunctionalTest;->assertTrue(Z)V

    .line 115
    return-void
.end method

.method public testEventLargerThanInitialBufferCapacity()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    const/16 v5, 0x7f

    new-array v1, v5, [Ljava/lang/Integer;

    .line 82
    .local v1, array:[Ljava/lang/Integer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    array-length v5, v1

    if-ge v2, v5, :cond_11

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 85
    :cond_11
    new-instance v3, Landroid/util/EventLog$List;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    invoke-direct {v3, v5}, Landroid/util/EventLog$List;-><init>([Ljava/lang/Object;)V

    .line 86
    .local v3, list:Landroid/util/EventLog$List;
    const/16 v5, 0x2a

    invoke-static {v5, v3}, Landroid/util/EventLog;->writeEvent(ILandroid/util/EventLog$List;)I

    move-result v4

    .line 87
    .local v4, numBytes:I
    array-length v5, v1

    mul-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5, v4}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 88
    return-void
.end method

.method public testEventLogTagsFile()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa9e

    const/16 v3, 0x13a

    const/16 v2, 0x2a

    const-string v6, "e"

    const-string v5, "answer"

    .line 153
    new-instance v0, Landroid/util/EventLogTags;

    invoke-direct {v0}, Landroid/util/EventLogTags;-><init>()V

    .line 154
    .local v0, tags:Landroid/util/EventLogTags;
    const-string v1, "answer"

    invoke-virtual {v0, v5}, Landroid/util/EventLogTags;->get(Ljava/lang/String;)Landroid/util/EventLogTags$Description;

    move-result-object v1

    iget v1, v1, Landroid/util/EventLogTags$Description;->mTag:I

    invoke-static {v1, v2}, Landroid/util/EventLogFunctionalTest;->assertEquals(II)V

    .line 155
    const-string v1, "pi"

    invoke-virtual {v0, v1}, Landroid/util/EventLogTags;->get(Ljava/lang/String;)Landroid/util/EventLogTags$Description;

    move-result-object v1

    iget v1, v1, Landroid/util/EventLogTags$Description;->mTag:I

    invoke-static {v1, v3}, Landroid/util/EventLogFunctionalTest;->assertEquals(II)V

    .line 156
    const-string v1, "e"

    invoke-virtual {v0, v6}, Landroid/util/EventLogTags;->get(Ljava/lang/String;)Landroid/util/EventLogTags$Description;

    move-result-object v1

    iget v1, v1, Landroid/util/EventLogTags$Description;->mTag:I

    invoke-static {v1, v4}, Landroid/util/EventLogFunctionalTest;->assertEquals(II)V

    .line 157
    invoke-virtual {v0, v2}, Landroid/util/EventLogTags;->get(I)Landroid/util/EventLogTags$Description;

    move-result-object v1

    iget-object v1, v1, Landroid/util/EventLogTags$Description;->mName:Ljava/lang/String;

    const-string v2, "answer"

    invoke-static {v1, v5}, Landroid/util/EventLogFunctionalTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, v3}, Landroid/util/EventLogTags;->get(I)Landroid/util/EventLogTags$Description;

    move-result-object v1

    iget-object v1, v1, Landroid/util/EventLogTags$Description;->mName:Ljava/lang/String;

    const-string v2, "pi"

    invoke-static {v1, v2}, Landroid/util/EventLogFunctionalTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v4}, Landroid/util/EventLogTags;->get(I)Landroid/util/EventLogTags$Description;

    move-result-object v1

    iget-object v1, v1, Landroid/util/EventLogTags$Description;->mName:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v6}, Landroid/util/EventLogFunctionalTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public testLogOfListWithEmbeddedList()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 74
    new-instance v0, Landroid/util/EventLog$List;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Landroid/util/EventLog$List;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x4d2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/16 v5, 0x929

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const/16 v6, 0xd80

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Landroid/util/EventLog$List;-><init>([Ljava/lang/Object;)V

    aput-object v3, v2, v7

    invoke-direct {v0, v2}, Landroid/util/EventLog$List;-><init>([Ljava/lang/Object;)V

    .line 76
    .local v0, list:Landroid/util/EventLog$List;
    const/16 v2, 0x2a

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(ILandroid/util/EventLog$List;)I

    move-result v1

    .line 77
    .local v1, numBytes:I
    const/16 v2, 0x18

    invoke-static {v2, v1}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 78
    return-void
.end method

.method public testLogOfListWithMultipleInts()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Landroid/util/EventLog$List;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x4d2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x929

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xd80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v2}, Landroid/util/EventLog$List;-><init>([Ljava/lang/Object;)V

    .line 69
    .local v0, list:Landroid/util/EventLog$List;
    const/16 v2, 0x2a

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(ILandroid/util/EventLog$List;)I

    move-result v1

    .line 70
    .local v1, numBytes:I
    const/16 v2, 0x16

    invoke-static {v2, v1}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 71
    return-void
.end method

.method public testLogOfListWithOneInt()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Landroid/util/EventLog$List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x4d2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v2}, Landroid/util/EventLog$List;-><init>([Ljava/lang/Object;)V

    .line 63
    .local v0, list:Landroid/util/EventLog$List;
    const/16 v2, 0x2a

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(ILandroid/util/EventLog$List;)I

    move-result v1

    .line 64
    .local v1, numBytes:I
    const/16 v2, 0xc

    invoke-static {v2, v1}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 65
    return-void
.end method

.method public testLogOfPosInt()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    const/16 v1, 0x2a

    const v2, 0x1020304

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    move-result v0

    .line 45
    .local v0, numBytes:I
    const/16 v1, 0x9

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 46
    return-void
.end method

.method public testLogOfPosLong()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    const/16 v1, 0x13a

    const-wide v2, 0x102030405060708L

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    move-result v0

    .line 51
    .local v0, numBytes:I
    const/16 v1, 0xd

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 52
    return-void
.end method

.method public testLogOfString()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v4, "foo bar baz"

    .line 56
    const-string v1, "foo bar baz"

    .line 57
    .local v1, valueStr:Ljava/lang/String;
    const/16 v2, 0x2a

    const-string v3, "foo bar baz"

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    move-result v0

    .line 58
    .local v0, numBytes:I
    const-string v2, "foo bar baz"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v0}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 59
    return-void
.end method
