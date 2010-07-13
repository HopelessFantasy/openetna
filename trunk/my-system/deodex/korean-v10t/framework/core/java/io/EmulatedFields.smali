.class Ljava/io/EmulatedFields;
.super Ljava/lang/Object;
.source "EmulatedFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/EmulatedFields$ObjectSlot;
    }
.end annotation


# instance fields
.field private declaredFields:[Ljava/io/ObjectStreamField;

.field private slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;


# direct methods
.method public constructor <init>([Ljava/io/ObjectStreamField;[Ljava/io/ObjectStreamField;)V
    .registers 3
    .parameter "fields"
    .parameter "declared"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-direct {p0, p1}, Ljava/io/EmulatedFields;->buildSlots([Ljava/io/ObjectStreamField;)V

    .line 84
    iput-object p2, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    .line 85
    return-void
.end method

.method private buildSlots([Ljava/io/ObjectStreamField;)V
    .registers 5
    .parameter "fields"

    .prologue
    .line 96
    array-length v2, p1

    new-array v2, v2, [Ljava/io/EmulatedFields$ObjectSlot;

    iput-object v2, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_19

    .line 98
    new-instance v1, Ljava/io/EmulatedFields$ObjectSlot;

    invoke-direct {v1}, Ljava/io/EmulatedFields$ObjectSlot;-><init>()V

    .line 99
    .local v1, s:Ljava/io/EmulatedFields$ObjectSlot;
    iget-object v2, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    aput-object v1, v2, v0

    .line 100
    aget-object v2, p1, v0

    iput-object v2, v1, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 103
    .end local v1           #s:Ljava/io/EmulatedFields$ObjectSlot;
    :cond_19
    return-void
.end method

.method private findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;
    .registers 9
    .parameter "fieldName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/EmulatedFields$ObjectSlot;"
        }
    .end annotation

    .prologue
    .local p2, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 146
    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_2c

    move v2, v5

    .line 148
    .local v2, isPrimitive:Z
    :goto_a
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v4, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    array-length v4, v4

    if-ge v1, v4, :cond_44

    .line 149
    iget-object v4, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    aget-object v3, v4, v1

    .line 150
    .local v3, slot:Ljava/io/EmulatedFields$ObjectSlot;
    iget-object v4, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 151
    if-eqz v2, :cond_2f

    .line 154
    iget-object v4, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p2, :cond_41

    move-object v4, v3

    .line 186
    .end local v3           #slot:Ljava/io/EmulatedFields$ObjectSlot;
    :goto_2b
    return-object v4

    .line 146
    .end local v1           #i:I
    .end local v2           #isPrimitive:Z
    :cond_2c
    const/4 v4, 0x0

    move v2, v4

    goto :goto_a

    .line 159
    .restart local v1       #i:I
    .restart local v2       #isPrimitive:Z
    .restart local v3       #slot:Ljava/io/EmulatedFields$ObjectSlot;
    :cond_2f
    if-nez p2, :cond_33

    move-object v4, v3

    .line 160
    goto :goto_2b

    .line 163
    :cond_33
    iget-object v4, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_41

    move-object v4, v3

    .line 164
    goto :goto_2b

    .line 148
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 170
    .end local v3           #slot:Ljava/io/EmulatedFields$ObjectSlot;
    :cond_44
    iget-object v4, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    if-eqz v4, :cond_7e

    .line 171
    const/4 v1, 0x0

    :goto_49
    iget-object v4, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    array-length v4, v4

    if-ge v1, v4, :cond_7e

    .line 172
    iget-object v4, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    aget-object v0, v4, v1

    .line 173
    .local v0, field:Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 174
    if-eqz v2, :cond_6f

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p2, :cond_7b

    .line 178
    :cond_64
    new-instance v3, Ljava/io/EmulatedFields$ObjectSlot;

    invoke-direct {v3}, Ljava/io/EmulatedFields$ObjectSlot;-><init>()V

    .line 179
    .restart local v3       #slot:Ljava/io/EmulatedFields$ObjectSlot;
    iput-object v0, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    .line 180
    iput-boolean v5, v3, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    move-object v4, v3

    .line 181
    goto :goto_2b

    .line 174
    .end local v3           #slot:Ljava/io/EmulatedFields$ObjectSlot;
    :cond_6f
    if-eqz p2, :cond_64

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 171
    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 186
    .end local v0           #field:Ljava/io/ObjectStreamField;
    :cond_7e
    const/4 v4, 0x0

    goto :goto_2b
.end method


# virtual methods
.method public defaulted(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 120
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_d

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 123
    :cond_d
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    return v1
.end method

.method public get(Ljava/lang/String;B)B
    .registers 5
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 206
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 208
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_e

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 211
    :cond_e
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_14

    move v1, p2

    .end local p0
    :goto_13
    return v1

    .restart local p0
    :cond_14
    iget-object p0, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_13
.end method

.method public get(Ljava/lang/String;C)C
    .registers 5
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 232
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 234
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_e

    .line 235
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 237
    :cond_e
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_14

    move v1, p2

    .end local p0
    :goto_13
    return v1

    .restart local p0
    :cond_14
    iget-object p0, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_13
.end method

.method public get(Ljava/lang/String;D)D
    .registers 7
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 258
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 260
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_e

    .line 261
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 263
    :cond_e
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_14

    move-wide v1, p2

    .end local p0
    :goto_13
    return-wide v1

    .restart local p0
    :cond_14
    iget-object p0, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_13
.end method

.method public get(Ljava/lang/String;F)F
    .registers 5
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 284
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 286
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_e

    .line 287
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 289
    :cond_e
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_14

    move v1, p2

    .end local p0
    :goto_13
    return v1

    .restart local p0
    :cond_14
    iget-object p0, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_13
.end method

.method public get(Ljava/lang/String;I)I
    .registers 5
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 310
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 312
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_e

    .line 313
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 315
    :cond_e
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_14

    move v1, p2

    .end local p0
    :goto_13
    return v1

    .restart local p0
    :cond_14
    iget-object p0, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_13
.end method

.method public get(Ljava/lang/String;J)J
    .registers 7
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 336
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 338
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_e

    .line 339
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 341
    :cond_e
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_14

    move-wide v1, p2

    .end local p0
    :goto_13
    return-wide v1

    .restart local p0
    :cond_14
    iget-object p0, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_13
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 362
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 364
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-eqz v0, :cond_13

    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 365
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 367
    :cond_19
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_1f

    move-object v1, p2

    :goto_1e
    return-object v1

    :cond_1f
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1e
.end method

.method public get(Ljava/lang/String;S)S
    .registers 5
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 387
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 389
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_e

    .line 390
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 392
    :cond_e
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_14

    move v1, p2

    .end local p0
    :goto_13
    return v1

    .restart local p0
    :cond_14
    iget-object p0, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    goto :goto_13
.end method

.method public get(Ljava/lang/String;Z)Z
    .registers 5
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 414
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 416
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_e

    .line 417
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 419
    :cond_e
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_14

    move v1, p2

    .end local p0
    :goto_13
    return v1

    .restart local p0
    :cond_14
    iget-object p0, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_13
.end method

.method public put(Ljava/lang/String;B)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 436
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 437
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_e

    .line 438
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 440
    :cond_e
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 441
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 442
    return-void
.end method

.method public put(Ljava/lang/String;C)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 457
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 458
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_e

    .line 459
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 461
    :cond_e
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 462
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 463
    return-void
.end method

.method public put(Ljava/lang/String;D)V
    .registers 6
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 478
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 479
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_e

    .line 480
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 482
    :cond_e
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 483
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 484
    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 499
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 500
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_e

    .line 501
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 503
    :cond_e
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 504
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 505
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 520
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 521
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_e

    .line 522
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 524
    :cond_e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 525
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 526
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .registers 6
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 541
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 542
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_e

    .line 543
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 545
    :cond_e
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 546
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 547
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 562
    const/4 v1, 0x0

    .line 563
    .local v1, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p2, :cond_7

    .line 564
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 566
    :cond_7
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 567
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_13

    .line 568
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 570
    :cond_13
    iput-object p2, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 571
    const/4 v2, 0x0

    iput-boolean v2, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 572
    return-void
.end method

.method public put(Ljava/lang/String;S)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 587
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 588
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_e

    .line 589
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 591
    :cond_e
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 592
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 593
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 608
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .line 609
    .local v0, slot:Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_e

    .line 610
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 612
    :cond_e
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 613
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 614
    return-void
.end method

.method public slots()[Ljava/io/EmulatedFields$ObjectSlot;
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    return-object v0
.end method
