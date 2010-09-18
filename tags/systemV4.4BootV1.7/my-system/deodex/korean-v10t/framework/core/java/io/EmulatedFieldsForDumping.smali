.class Ljava/io/EmulatedFieldsForDumping;
.super Ljava/io/ObjectOutputStream$PutField;
.source "EmulatedFieldsForDumping.java"


# instance fields
.field private emulatedFields:Ljava/io/EmulatedFields;


# direct methods
.method constructor <init>(Ljava/io/ObjectStreamClass;)V
    .registers 5
    .parameter "streamClass"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$PutField;-><init>()V

    .line 43
    new-instance v1, Ljava/io/EmulatedFields;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [Ljava/io/ObjectStreamField;

    invoke-direct {v1, v2, v0}, Ljava/io/EmulatedFields;-><init>([Ljava/io/ObjectStreamField;[Ljava/io/ObjectStreamField;)V

    iput-object v1, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    .line 45
    return-void
.end method


# virtual methods
.method emulatedFields()Ljava/io/EmulatedFields;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    return-object v0
.end method

.method public put(Ljava/lang/String;B)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 69
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;B)V

    .line 70
    return-void
.end method

.method public put(Ljava/lang/String;C)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 83
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;C)V

    .line 84
    return-void
.end method

.method public put(Ljava/lang/String;D)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 97
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;D)V

    .line 98
    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 111
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;F)V

    .line 112
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 125
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;I)V

    .line 126
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 139
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;J)V

    .line 140
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 153
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public put(Ljava/lang/String;S)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 167
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;S)V

    .line 168
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 181
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;Z)V

    .line 182
    return-void
.end method

.method public write(Ljava/io/ObjectOutput;)V
    .registers 10
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 197
    iget-object v5, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v5}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v3

    .line 198
    .local v3, slots:[Ljava/io/EmulatedFields$ObjectSlot;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    array-length v5, v3

    if-ge v1, v5, :cond_b3

    .line 199
    aget-object v2, v3, v1

    .line 200
    .local v2, slot:Ljava/io/EmulatedFields$ObjectSlot;
    invoke-virtual {v2}, Ljava/io/EmulatedFields$ObjectSlot;->getFieldValue()Ljava/lang/Object;

    move-result-object v0

    .line 201
    .local v0, fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/io/EmulatedFields$ObjectSlot;->getField()Ljava/io/ObjectStreamField;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 203
    .local v4, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_2d

    .line 204
    if-eqz v0, :cond_2b

    check-cast v0, Ljava/lang/Integer;

    .end local v0           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_25
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 198
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .restart local v0       #fieldValue:Ljava/lang/Object;
    :cond_2b
    move v5, v7

    .line 204
    goto :goto_25

    .line 206
    :cond_2d
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_3f

    .line 207
    if-eqz v0, :cond_3d

    check-cast v0, Ljava/lang/Byte;

    .end local v0           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    :goto_39
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeByte(I)V

    goto :goto_28

    .restart local v0       #fieldValue:Ljava/lang/Object;
    :cond_3d
    move v5, v7

    goto :goto_39

    .line 209
    :cond_3f
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_51

    .line 210
    if-eqz v0, :cond_4f

    check-cast v0, Ljava/lang/Character;

    .end local v0           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v5

    :goto_4b
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeChar(I)V

    goto :goto_28

    .restart local v0       #fieldValue:Ljava/lang/Object;
    :cond_4f
    move v5, v7

    goto :goto_4b

    .line 212
    :cond_51
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_63

    .line 213
    if-eqz v0, :cond_61

    check-cast v0, Ljava/lang/Short;

    .end local v0           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v5

    :goto_5d
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeShort(I)V

    goto :goto_28

    .restart local v0       #fieldValue:Ljava/lang/Object;
    :cond_61
    move v5, v7

    goto :goto_5d

    .line 215
    :cond_63
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_75

    .line 216
    if-eqz v0, :cond_73

    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_6f
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    goto :goto_28

    .restart local v0       #fieldValue:Ljava/lang/Object;
    :cond_73
    move v5, v7

    goto :goto_6f

    .line 218
    :cond_75
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_88

    .line 219
    if-eqz v0, :cond_85

    check-cast v0, Ljava/lang/Long;

    .end local v0           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_81
    invoke-interface {p1, v5, v6}, Ljava/io/ObjectOutput;->writeLong(J)V

    goto :goto_28

    .restart local v0       #fieldValue:Ljava/lang/Object;
    :cond_85
    const-wide/16 v5, 0x0

    goto :goto_81

    .line 221
    :cond_88
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_9a

    .line 222
    if-eqz v0, :cond_98

    check-cast v0, Ljava/lang/Float;

    .end local v0           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :goto_94
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeFloat(F)V

    goto :goto_28

    .restart local v0       #fieldValue:Ljava/lang/Object;
    :cond_98
    const/4 v5, 0x0

    goto :goto_94

    .line 224
    :cond_9a
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_ae

    .line 225
    if-eqz v0, :cond_ab

    check-cast v0, Ljava/lang/Double;

    .end local v0           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :goto_a6
    invoke-interface {p1, v5, v6}, Ljava/io/ObjectOutput;->writeDouble(D)V

    goto/16 :goto_28

    .restart local v0       #fieldValue:Ljava/lang/Object;
    :cond_ab
    const-wide/16 v5, 0x0

    goto :goto_a6

    .line 229
    :cond_ae
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 232
    .end local v0           #fieldValue:Ljava/lang/Object;
    .end local v2           #slot:Ljava/io/EmulatedFields$ObjectSlot;
    .end local v4           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_b3
    return-void
.end method
