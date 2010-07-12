.class public Landroid/bluetooth/AtParser;
.super Ljava/lang/Object;
.source "AtParser.java"


# static fields
.field private static final TYPE_ACTION:I = 0x0

.field private static final TYPE_READ:I = 0x1

.field private static final TYPE_SET:I = 0x2

.field private static final TYPE_TEST:I = 0x3


# instance fields
.field private mBasicHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Landroid/bluetooth/AtCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mExtHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/AtCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInput:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    .line 110
    return-void
.end method

.method private static clean(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "input"

    .prologue
    const/16 v5, 0x22

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 148
    .local v3, out:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2f

    .line 149
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 150
    .local v0, c:C
    if-ne v0, v5, :cond_41

    .line 151
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 152
    .local v2, j:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_34

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    .end local v0           #c:C
    .end local v2           #j:I
    :cond_2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 157
    .restart local v0       #c:C
    .restart local v2       #j:I
    :cond_34
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    move v1, v2

    .line 148
    .end local v2           #j:I
    :cond_3e
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 159
    :cond_41
    const/16 v4, 0x20

    if-eq v0, v4, :cond_3e

    .line 160
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3e
.end method

.method private static findChar(CLjava/lang/String;I)I
    .registers 7
    .parameter "ch"
    .parameter "input"
    .parameter "fromIndex"

    .prologue
    const/16 v3, 0x22

    .line 176
    move v1, p2

    .local v1, i:I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 178
    .local v0, c:C
    if-ne v0, v3, :cond_1d

    .line 179
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 180
    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 187
    .end local v0           #c:C
    :goto_1c
    return v2

    .line 183
    .restart local v0       #c:C
    :cond_1d
    if-ne v0, p0, :cond_21

    move v2, v1

    .line 184
    goto :goto_1c

    .line 176
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 187
    .end local v0           #c:C
    :cond_24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1c
.end method

.method private static findEndExtendedName(Ljava/lang/String;I)I
    .registers 5
    .parameter "input"
    .parameter "index"

    .prologue
    .line 220
    move v1, p1

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 221
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 225
    .local v0, c:C
    invoke-static {v0}, Landroid/bluetooth/AtParser;->isAtoZ(C)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 220
    :cond_11
    :sswitch_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 226
    :cond_14
    const/16 v2, 0x30

    if-lt v0, v2, :cond_1c

    const/16 v2, 0x39

    if-le v0, v2, :cond_11

    .line 227
    :cond_1c
    sparse-switch v0, :sswitch_data_26

    move v2, v1

    .line 240
    .end local v0           #c:C
    :goto_20
    return v2

    :cond_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_20

    .line 227
    :sswitch_data_26
    .sparse-switch
        0x21 -> :sswitch_11
        0x25 -> :sswitch_11
        0x2d -> :sswitch_11
        0x2e -> :sswitch_11
        0x2f -> :sswitch_11
        0x3a -> :sswitch_11
        0x5f -> :sswitch_11
    .end sparse-switch
.end method

.method private static generateArgs(Ljava/lang/String;)[Ljava/lang/Object;
    .registers 7
    .parameter "input"

    .prologue
    .line 196
    const/4 v2, 0x0

    .line 198
    .local v2, i:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v4, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v2, v5, :cond_27

    .line 200
    const/16 v5, 0x2c

    invoke-static {v5, p0, v2}, Landroid/bluetooth/AtParser;->findChar(CLjava/lang/String;I)I

    move-result v3

    .line 202
    .local v3, j:I
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, arg:Ljava/lang/String;
    :try_start_16
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1e} :catch_21

    .line 209
    :goto_1e
    add-int/lit8 v2, v3, 0x1

    .line 210
    goto :goto_6

    .line 205
    :catch_21
    move-exception v5

    move-object v1, v5

    .line 206
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 211
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #j:I
    :cond_27
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private static isAtoZ(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 168
    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public process(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .registers 16
    .parameter "raw_input"

    .prologue
    .line 252
    invoke-static {p1}, Landroid/bluetooth/AtParser;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, input:Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "A/"

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v7, v10, v11, v12, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 256
    new-instance v7, Ljava/lang/String;

    .end local v7           #input:Ljava/lang/String;
    iget-object v10, p0, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 262
    .restart local v7       #input:Ljava/lang/String;
    :goto_16
    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 264
    new-instance v10, Landroid/bluetooth/AtCommandResult;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 368
    .end local p0
    :goto_24
    return-object v10

    .line 258
    .restart local p0
    :cond_25
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    goto :goto_16

    .line 268
    :cond_2d
    const/4 v10, 0x0

    const-string v11, "AT"

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v7, v10, v11, v12, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-nez v10, :cond_3f

    .line 270
    new-instance v10, Landroid/bluetooth/AtCommandResult;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_24

    .line 274
    :cond_3f
    const/4 v6, 0x2

    .line 275
    .local v6, index:I
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 277
    .local v8, result:Landroid/bluetooth/AtCommandResult;
    :goto_46
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_120

    .line 278
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 280
    .local v1, c:C
    invoke-static {v1}, Landroid/bluetooth/AtParser;->isAtoZ(C)Z

    move-result v10

    if-eqz v10, :cond_88

    .line 284
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, args:Ljava/lang/String;
    iget-object v10, p0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7d

    .line 286
    iget-object v10, p0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/bluetooth/AtCommandHandler;

    invoke-virtual {p0, v0}, Landroid/bluetooth/AtCommandHandler;->handleBasicCommand(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    move-object v10, v8

    .line 288
    goto :goto_24

    .line 291
    .restart local p0
    :cond_7d
    new-instance v10, Landroid/bluetooth/AtCommandResult;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    move-object v10, v8

    .line 293
    goto :goto_24

    .line 298
    .end local v0           #args:Ljava/lang/String;
    :cond_88
    const/16 v10, 0x2b

    if-ne v1, v10, :cond_11c

    .line 302
    add-int/lit8 v10, v6, 0x1

    invoke-static {v7, v10}, Landroid/bluetooth/AtParser;->findEndExtendedName(Ljava/lang/String;I)I

    move-result v5

    .line 303
    .local v5, i:I
    invoke-virtual {v7, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, commandName:Ljava/lang/String;
    iget-object v10, p0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_aa

    .line 306
    new-instance v10, Landroid/bluetooth/AtCommandResult;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    move-object v10, v8

    .line 308
    goto/16 :goto_24

    .line 310
    :cond_aa
    iget-object v10, p0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/AtCommandHandler;

    .line 314
    .local v4, handler:Landroid/bluetooth/AtCommandHandler;
    const/16 v10, 0x3b

    invoke-static {v10, v7, v6}, Landroid/bluetooth/AtParser;->findChar(CLjava/lang/String;I)I

    move-result v3

    .line 321
    .local v3, endIndex:I
    if-lt v5, v3, :cond_c7

    .line 322
    const/4 v9, 0x0

    .line 340
    .local v9, type:I
    :goto_bb
    packed-switch v9, :pswitch_data_124

    .line 356
    :goto_be
    invoke-virtual {v8}, Landroid/bluetooth/AtCommandResult;->getResultCode()I

    move-result v10

    if-eqz v10, :cond_119

    move-object v10, v8

    .line 357
    goto/16 :goto_24

    .line 323
    .end local v9           #type:I
    :cond_c7
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_d1

    .line 324
    const/4 v9, 0x1

    .restart local v9       #type:I
    goto :goto_bb

    .line 325
    .end local v9           #type:I
    :cond_d1
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_ed

    .line 326
    add-int/lit8 v10, v5, 0x1

    if-ge v10, v3, :cond_eb

    .line 327
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_e9

    .line 328
    const/4 v9, 0x3

    .restart local v9       #type:I
    goto :goto_bb

    .line 330
    .end local v9           #type:I
    :cond_e9
    const/4 v9, 0x2

    .restart local v9       #type:I
    goto :goto_bb

    .line 333
    .end local v9           #type:I
    :cond_eb
    const/4 v9, 0x2

    .restart local v9       #type:I
    goto :goto_bb

    .line 336
    .end local v9           #type:I
    :cond_ed
    const/4 v9, 0x0

    .restart local v9       #type:I
    goto :goto_bb

    .line 342
    :pswitch_ef
    invoke-virtual {v4}, Landroid/bluetooth/AtCommandHandler;->handleActionCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_be

    .line 345
    :pswitch_f7
    invoke-virtual {v4}, Landroid/bluetooth/AtCommandHandler;->handleReadCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_be

    .line 348
    :pswitch_ff
    invoke-virtual {v4}, Landroid/bluetooth/AtCommandHandler;->handleTestCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_be

    .line 351
    :pswitch_107
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v7, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/AtParser;->generateArgs(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 353
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {v4, v0}, Landroid/bluetooth/AtCommandHandler;->handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_be

    .line 360
    .end local v0           #args:[Ljava/lang/Object;
    :cond_119
    move v6, v3

    .line 361
    goto/16 :goto_46

    .line 364
    .end local v2           #commandName:Ljava/lang/String;
    .end local v3           #endIndex:I
    .end local v4           #handler:Landroid/bluetooth/AtCommandHandler;
    .end local v5           #i:I
    .end local v9           #type:I
    :cond_11c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_46

    .end local v1           #c:C
    :cond_120
    move-object v10, v8

    .line 368
    goto/16 :goto_24

    .line 340
    nop

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_ef
        :pswitch_f7
        :pswitch_107
        :pswitch_ff
    .end packed-switch
.end method

.method public register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V
    .registers 4
    .parameter "command"
    .parameter "handler"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V
    .registers 4
    .parameter "command"
    .parameter "handler"

    .prologue
    .line 136
    iget-object v0, p0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method
