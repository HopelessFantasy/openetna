.class public Ljava/io/ObjectStreamField;
.super Ljava/lang/Object;
.source "ObjectStreamField.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private isDeserialized:Z

.field private name:Ljava/lang/String;

.field offset:I

.field private type:Ljava/lang/Object;

.field private typeString:Ljava/lang/String;

.field private unshared:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-eqz p1, :cond_7

    if-nez p2, :cond_d

    .line 65
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 67
    :cond_d
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .registers 5
    .parameter "name"
    .parameter
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-eqz p1, :cond_7

    if-nez p2, :cond_d

    .line 89
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 91
    :cond_d
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    .line 92
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1b

    move-object v0, p2

    :goto_16
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    .line 94
    iput-boolean p3, p0, Ljava/io/ObjectStreamField;->unshared:Z

    .line 95
    return-void

    .line 92
    :cond_1b
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_16
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "signature"
    .parameter "name"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-nez p2, :cond_b

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 110
    :cond_b
    iput-object p2, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    .line 111
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectStreamField;->isDeserialized:Z

    .line 113
    return-void
.end method

.method static sortFields([Ljava/io/ObjectStreamField;)V
    .registers 4
    .parameter "fields"

    .prologue
    .line 344
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_c

    .line 345
    new-instance v0, Ljava/io/ObjectStreamField$1;

    invoke-direct {v0}, Ljava/io/ObjectStreamField$1;-><init>()V

    .line 350
    .local v0, fieldDescComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/io/ObjectStreamField;>;"
    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 352
    .end local v0           #fieldDescComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/io/ObjectStreamField;>;"
    :cond_c
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 8
    .parameter "o"

    .prologue
    .line 129
    move-object v0, p1

    check-cast v0, Ljava/io/ObjectStreamField;

    move-object v1, v0

    .line 130
    .local v1, f:Ljava/io/ObjectStreamField;
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v3

    .line 131
    .local v3, thisPrimitive:Z
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v2

    .line 135
    .local v2, fPrimitive:Z
    if-eq v3, v2, :cond_14

    .line 136
    if-eqz v3, :cond_12

    const/4 v4, -0x1

    .line 140
    :goto_11
    return v4

    .line 136
    :cond_12
    const/4 v4, 0x1

    goto :goto_11

    .line 140
    :cond_14
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_11
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Ljava/io/ObjectStreamField;->offset:I

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v0

    .line 220
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-boolean v1, p0, Ljava/io/ObjectStreamField;->isDeserialized:Z

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_11

    .line 221
    const-class v1, Ljava/lang/Object;

    .line 223
    :goto_10
    return-object v1

    :cond_11
    move-object v1, v0

    goto :goto_10
.end method

.method public getTypeCode()C
    .registers 3

    .prologue
    .line 247
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v0

    .line 248
    .local v0, t:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_b

    .line 249
    const/16 v1, 0x49

    .line 275
    :goto_a
    return v1

    .line 251
    :cond_b
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_12

    .line 252
    const/16 v1, 0x42

    goto :goto_a

    .line 254
    :cond_12
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_19

    .line 255
    const/16 v1, 0x43

    goto :goto_a

    .line 257
    :cond_19
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_20

    .line 258
    const/16 v1, 0x53

    goto :goto_a

    .line 260
    :cond_20
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_27

    .line 261
    const/16 v1, 0x5a

    goto :goto_a

    .line 263
    :cond_27
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2e

    .line 264
    const/16 v1, 0x4a

    goto :goto_a

    .line 266
    :cond_2e
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_35

    .line 267
    const/16 v1, 0x46

    goto :goto_a

    .line 269
    :cond_35
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3c

    .line 270
    const/16 v1, 0x44

    goto :goto_a

    .line 272
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 273
    const/16 v1, 0x5b

    goto :goto_a

    .line 275
    :cond_45
    const/16 v1, 0x4c

    goto :goto_a
.end method

.method getTypeInternal()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_12

    .line 207
    iget-object p0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    move-object v0, p0

    .line 209
    :goto_11
    return-object v0

    .restart local p0
    :cond_12
    iget-object p0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Class;

    move-object v0, p0

    goto :goto_11
.end method

.method public getTypeString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 287
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 288
    const/4 v3, 0x0

    .line 296
    :goto_7
    return-object v3

    .line 290
    :cond_8
    iget-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    if-nez v3, :cond_29

    .line 291
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v1

    .line 292
    .local v1, t:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, typeName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2c

    move-object v0, v2

    .line 294
    .local v0, str:Ljava/lang/String;
    :goto_23
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    .line 296
    .end local v0           #str:Ljava/lang/String;
    .end local v1           #t:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #typeName:Ljava/lang/String;
    :cond_29
    iget-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    goto :goto_7

    .line 293
    .restart local v1       #t:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #typeName:Ljava/lang/String;
    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_23
.end method

.method public isPrimitive()Z
    .registers 3

    .prologue
    .line 307
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v0

    .line 308
    .local v0, t:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isUnshared()Z
    .registers 2

    .prologue
    .line 404
    iget-boolean v0, p0, Ljava/io/ObjectStreamField;->unshared:Z

    return v0
.end method

.method resolve(Ljava/lang/ClassLoader;)V
    .registers 9
    .parameter "loader"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 355
    iget-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_13

    .line 356
    iget-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_6e

    .line 383
    :cond_13
    iget-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, className:Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_2e

    .line 386
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 389
    :cond_2e
    const/4 v2, 0x0

    :try_start_2f
    invoke-static {v1, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 390
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_65

    move-object v2, v0

    :goto_3a
    iput-object v2, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_3c} :catch_6b

    .line 395
    .end local v0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #className:Ljava/lang/String;
    :goto_3c
    return-void

    .line 358
    :sswitch_3d
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v2, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_3c

    .line 361
    :sswitch_42
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    iput-object v2, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_3c

    .line 364
    :sswitch_47
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    iput-object v2, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_3c

    .line 367
    :sswitch_4c
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    iput-object v2, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_3c

    .line 370
    :sswitch_51
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    iput-object v2, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_3c

    .line 373
    :sswitch_56
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iput-object v2, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_3c

    .line 376
    :sswitch_5b
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v2, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_3c

    .line 379
    :sswitch_60
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    iput-object v2, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_3c

    .line 390
    .restart local v0       #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v1       #className:Ljava/lang/String;
    :cond_65
    :try_start_65
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_6a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_65 .. :try_end_6a} :catch_6b

    goto :goto_3a

    .line 392
    .end local v0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_6b
    move-exception v2

    goto :goto_3c

    .line 356
    nop

    :sswitch_data_6e
    .sparse-switch
        0x42 -> :sswitch_42
        0x43 -> :sswitch_47
        0x44 -> :sswitch_60
        0x46 -> :sswitch_5b
        0x49 -> :sswitch_3d
        0x4a -> :sswitch_56
        0x53 -> :sswitch_4c
        0x5a -> :sswitch_51
    .end sparse-switch
.end method

.method protected setOffset(I)V
    .registers 2
    .parameter "newValue"

    .prologue
    .line 319
    iput p1, p0, Ljava/io/ObjectStreamField;->offset:I

    .line 320
    return-void
.end method

.method setUnshared(Z)V
    .registers 2
    .parameter "unshared"

    .prologue
    .line 408
    iput-boolean p1, p0, Ljava/io/ObjectStreamField;->unshared:Z

    .line 409
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
