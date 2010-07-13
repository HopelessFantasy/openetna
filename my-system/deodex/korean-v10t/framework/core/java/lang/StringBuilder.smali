.class public final Ljava/lang/StringBuilder;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3cd5fb145a4c6acbL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "capacity"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "str"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 708
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 709
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 710
    .local v1, count:I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    move-object v0, v3

    check-cast v0, [C

    move-object v2, v0

    .line 711
    .local v2, value:[C
    invoke-virtual {p0, v2, v1}, Ljava/lang/StringBuilder;->set([CI)V

    .line 712
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 727
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 728
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->getValue()[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 729
    return-void
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
    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

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
    .line 43
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Ljava/lang/StringBuilder;
    .registers 2
    .parameter "c"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append0(C)V

    .line 127
    return-object p0
.end method

.method public append(D)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "d"

    .prologue
    .line 190
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    .line 191
    return-object p0
.end method

.method public append(F)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "f"

    .prologue
    .line 174
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    .line 175
    return-object p0
.end method

.method public append(I)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "i"

    .prologue
    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    .line 143
    return-object p0
.end method

.method public append(J)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "lng"

    .prologue
    .line 158
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    .line 159
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "csq"

    .prologue
    .line 297
    if-nez p1, :cond_6

    .line 298
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->appendNull()V

    .line 302
    :goto_5
    return-object p0

    .line 300
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 324
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append0(Ljava/lang/CharSequence;II)V

    .line 325
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "obj"

    .prologue
    .line 206
    if-nez p1, :cond_6

    .line 207
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->appendNull()V

    .line 211
    :goto_5
    return-object p0

    .line 209
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 2
    .parameter "str"

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    .line 225
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;
    .registers 5
    .parameter "sb"

    .prologue
    .line 239
    if-nez p1, :cond_6

    .line 240
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->appendNull()V

    .line 244
    :goto_5
    return-object p0

    .line 242
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->getValue()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/lang/StringBuilder;->append0([CII)V

    goto :goto_5
.end method

.method public append(Z)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "b"

    .prologue
    .line 110
    if-eqz p1, :cond_8

    const-string v0, "true"

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    .line 111
    return-object p0

    .line 110
    :cond_8
    const-string v0, "false"

    goto :goto_4
.end method

.method public append([C)Ljava/lang/StringBuilder;
    .registers 2
    .parameter "ch"

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append0([C)V

    .line 260
    return-object p0
.end method

.method public append([CII)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "str"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 282
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append0([CII)V

    .line 283
    return-object p0
.end method

.method public appendCodePoint(I)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 339
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0([C)V

    .line 340
    return-object p0
.end method

.method public delete(II)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 358
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->delete0(II)V

    .line 359
    return-object p0
.end method

.method public deleteCharAt(I)Ljava/lang/StringBuilder;
    .registers 2
    .parameter "index"

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt0(I)V

    .line 376
    return-object p0
.end method

.method public insert(IC)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "offset"
    .parameter "c"

    .prologue
    .line 418
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert0(IC)V

    .line 419
    return-object p0
.end method

.method public insert(ID)Ljava/lang/StringBuilder;
    .registers 5
    .parameter "offset"
    .parameter "d"

    .prologue
    .line 503
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 504
    return-object p0
.end method

.method public insert(IF)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "offset"
    .parameter "f"

    .prologue
    .line 481
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 482
    return-object p0
.end method

.method public insert(II)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "offset"
    .parameter "i"

    .prologue
    .line 439
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 440
    return-object p0
.end method

.method public insert(IJ)Ljava/lang/StringBuilder;
    .registers 5
    .parameter "offset"
    .parameter "l"

    .prologue
    .line 460
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 461
    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "offset"
    .parameter "s"

    .prologue
    .line 614
    if-nez p2, :cond_8

    const-string v0, "null"

    :goto_4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 615
    return-object p0

    .line 614
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .registers 5
    .parameter "offset"
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 643
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/CharSequence;II)V

    .line 644
    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "offset"
    .parameter "obj"

    .prologue
    .line 524
    if-nez p2, :cond_8

    const-string v0, "null"

    :goto_4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 525
    return-object p0

    .line 524
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "offset"
    .parameter "str"

    .prologue
    .line 543
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 544
    return-object p0
.end method

.method public insert(IZ)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "offset"
    .parameter "b"

    .prologue
    .line 397
    if-eqz p2, :cond_8

    const-string v0, "true"

    :goto_4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 398
    return-object p0

    .line 397
    :cond_8
    const-string v0, "false"

    goto :goto_4
.end method

.method public insert(I[C)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "offset"
    .parameter "ch"

    .prologue
    .line 564
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert0(I[C)V

    .line 565
    return-object p0
.end method

.method public insert(I[CII)Ljava/lang/StringBuilder;
    .registers 5
    .parameter "offset"
    .parameter "str"
    .parameter "strOffset"
    .parameter "strLen"

    .prologue
    .line 592
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert0(I[CII)V

    .line 593
    return-object p0
.end method

.method public replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "start"
    .parameter "end"
    .parameter "str"

    .prologue
    .line 664
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->replace0(IILjava/lang/String;)V

    .line 665
    return-object p0
.end method

.method public reverse()Ljava/lang/StringBuilder;
    .registers 1

    .prologue
    .line 675
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->reverse0()V

    .line 676
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 692
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
