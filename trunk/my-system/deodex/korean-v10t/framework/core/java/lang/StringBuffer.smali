.class public final Ljava/lang/StringBuffer;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuffer.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/CharSequence;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x2f0707d9eac8ead3L


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "count"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "shared"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "value"

    const-class v4, [C

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/lang/StringBuffer;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "capacity"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "cs"

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "string"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 764
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v2

    .line 765
    .local v2, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v4, "count"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    .line 766
    .local v1, count:I
    const-string v4, "value"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    move-object v0, v4

    check-cast v0, [C

    move-object v3, v0

    .line 767
    .local v3, value:[C
    invoke-virtual {p0, v3, v1}, Ljava/lang/StringBuffer;->set([CI)V

    .line 768
    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 755
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 756
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "count"

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 757
    const-string v1, "shared"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 758
    const-string v1, "value"

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->getValue()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 759
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 760
    monitor-exit p0

    return-void

    .line 755
    .end local v0           #fields:Ljava/io/ObjectOutputStream$PutField;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized append(C)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "ch"

    .prologue
    .line 128
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append0(C)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 129
    monitor-exit p0

    return-object p0

    .line 128
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public append(D)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "d"

    .prologue
    .line 143
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "f"

    .prologue
    .line 157
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(I)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "i"

    .prologue
    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(J)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "l"

    .prologue
    .line 185
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "s"

    .prologue
    .line 300
    monitor-enter p0

    if-nez p1, :cond_8

    .line 301
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->appendNull()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 305
    :goto_6
    monitor-exit p0

    return-object p0

    .line 303
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append0(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    goto :goto_6

    .line 300
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 329
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append0(Ljava/lang/CharSequence;II)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 330
    monitor-exit p0

    return-object p0

    .line 329
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "obj"

    .prologue
    .line 204
    monitor-enter p0

    if-nez p1, :cond_8

    .line 205
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->appendNull()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 209
    :goto_6
    monitor-exit p0

    return-object p0

    .line 207
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append0(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    goto :goto_6

    .line 204
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "string"

    .prologue
    .line 225
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append0(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 226
    monitor-exit p0

    return-object p0

    .line 225
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "sb"

    .prologue
    .line 243
    monitor-enter p0

    if-nez p1, :cond_8

    .line 244
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->appendNull()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a

    .line 250
    :goto_6
    monitor-exit p0

    return-object p0

    .line 246
    :cond_8
    :try_start_8
    monitor-enter p1
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_1a

    .line 247
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->getValue()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/lang/StringBuffer;->append0([CII)V

    .line 248
    monitor-exit p1

    goto :goto_6

    :catchall_17
    move-exception v0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    :try_start_19
    throw v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    .line 243
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public append(Z)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "b"

    .prologue
    .line 115
    if-eqz p1, :cond_9

    const-string v0, "true"

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "false"

    goto :goto_4
.end method

.method public declared-synchronized append([C)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "chars"

    .prologue
    .line 262
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append0([C)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 263
    monitor-exit p0

    return-object p0

    .line 262
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append([CII)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "chars"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 282
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append0([CII)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 283
    monitor-exit p0

    return-object p0

    .line 282
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public appendCodePoint(I)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 348
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized charAt(I)C
    .registers 3
    .parameter "index"

    .prologue
    .line 353
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->charAt(I)C
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized codePointAt(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 358
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointAt(I)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized codePointBefore(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 363
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointBefore(I)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized codePointCount(II)I
    .registers 4
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 368
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->codePointCount(II)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(II)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 385
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->delete0(II)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 386
    monitor-exit p0

    return-object p0

    .line 385
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteCharAt(I)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "location"

    .prologue
    .line 400
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->deleteCharAt0(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 401
    monitor-exit p0

    return-object p0

    .line 400
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ensureCapacity(I)V
    .registers 3
    .parameter "min"

    .prologue
    .line 406
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacity(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 407
    monitor-exit p0

    return-void

    .line 406
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChars(II[CI)V
    .registers 6
    .parameter "start"
    .parameter "end"
    .parameter "buffer"
    .parameter "idx"

    .prologue
    .line 428
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 429
    monitor-exit p0

    return-void

    .line 428
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized indexOf(Ljava/lang/String;I)I
    .registers 4
    .parameter "subString"
    .parameter "start"

    .prologue
    .line 433
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(IC)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "index"
    .parameter "ch"

    .prologue
    .line 449
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert0(IC)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 450
    monitor-exit p0

    return-object p0

    .line 449
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(ID)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "index"
    .parameter "d"

    .prologue
    .line 518
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "index"
    .parameter "f"

    .prologue
    .line 535
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "index"
    .parameter "i"

    .prologue
    .line 484
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "index"
    .parameter "l"

    .prologue
    .line 501
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "index"
    .parameter "s"

    .prologue
    .line 641
    monitor-enter p0

    if-nez p2, :cond_a

    :try_start_3
    const-string v0, "null"

    :goto_5
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert0(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_f

    .line 642
    monitor-exit p0

    return-object p0

    .line 641
    :cond_a
    :try_start_a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    move-result-object v0

    goto :goto_5

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    .registers 6
    .parameter "index"
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 671
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->insert0(ILjava/lang/CharSequence;II)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 672
    monitor-exit p0

    return-object p0

    .line 671
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "index"
    .parameter "obj"

    .prologue
    .line 557
    if-nez p2, :cond_9

    const-string v0, "null"

    :goto_4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public declared-synchronized insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "index"
    .parameter "string"

    .prologue
    .line 577
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert0(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 578
    monitor-exit p0

    return-object p0

    .line 577
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(IZ)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "index"
    .parameter "b"

    .prologue
    .line 467
    if-eqz p2, :cond_9

    const-string v0, "true"

    :goto_4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "false"

    goto :goto_4
.end method

.method public declared-synchronized insert(I[C)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "index"
    .parameter "chars"

    .prologue
    .line 594
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert0(I[C)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 595
    monitor-exit p0

    return-object p0

    .line 594
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(I[CII)Ljava/lang/StringBuffer;
    .registers 6
    .parameter "index"
    .parameter "chars"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 619
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->insert0(I[CII)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 620
    monitor-exit p0

    return-object p0

    .line 619
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/String;I)I
    .registers 4
    .parameter "subString"
    .parameter "start"

    .prologue
    .line 677
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized offsetByCodePoints(II)I
    .registers 4
    .parameter "index"
    .parameter "codePointOffset"

    .prologue
    .line 682
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->offsetByCodePoints(II)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "start"
    .parameter "end"
    .parameter "string"

    .prologue
    .line 703
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->replace0(IILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 704
    monitor-exit p0

    return-object p0

    .line 703
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reverse()Ljava/lang/StringBuffer;
    .registers 2

    .prologue
    .line 714
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->reverse0()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 715
    monitor-exit p0

    return-object p0

    .line 714
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCharAt(IC)V
    .registers 4
    .parameter "index"
    .parameter "ch"

    .prologue
    .line 720
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->setCharAt(IC)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 721
    monitor-exit p0

    return-void

    .line 720
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLength(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 725
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->setLength(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 726
    monitor-exit p0

    return-void

    .line 725
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 730
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized substring(I)Ljava/lang/String;
    .registers 3
    .parameter "start"

    .prologue
    .line 735
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->substring(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized substring(II)Ljava/lang/String;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 740
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 745
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trimToSize()V
    .registers 2

    .prologue
    .line 750
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->trimToSize()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 751
    monitor-exit p0

    return-void

    .line 750
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
