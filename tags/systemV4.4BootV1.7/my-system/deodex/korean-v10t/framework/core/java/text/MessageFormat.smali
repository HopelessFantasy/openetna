.class public Ljava/text/MessageFormat;
.super Ljava/text/Format;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/MessageFormat$Field;,
        Ljava/text/MessageFormat$FieldContainer;
    }
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x59ea973e12bd01a8L


# instance fields
.field private argumentNumbers:[I

.field private formats:[Ljava/text/Format;

.field private locale:Ljava/util/Locale;

.field private transient maxArgumentIndex:I

.field private maxOffset:I

.field private transient strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-class v5, [I

    .line 1287
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "argumentNumbers"

    const-class v4, [I

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "formats"

    const-class v4, [Ljava/text/Format;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "locale"

    const-class v4, Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maxOffset"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "offsets"

    const-class v4, [I

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "pattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/MessageFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "template"

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 362
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 402
    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4
    .parameter "template"
    .parameter "locale"

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 362
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 387
    iput-object p2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 388
    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method private appendQuoted(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 8
    .parameter "buffer"
    .parameter "string"

    .prologue
    const/16 v4, 0x27

    .line 1274
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1275
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_25

    .line 1276
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1277
    .local v0, ch:C
    const/16 v3, 0x7b

    if-eq v0, v3, :cond_15

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_21

    .line 1278
    :cond_15
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1279
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1280
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1275
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1282
    :cond_21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 1285
    .end local v0           #ch:C
    :cond_25
    return-void
.end method

.method private decodeDecimalFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;
    .registers 4
    .parameter "buffer"
    .parameter "format"

    .prologue
    .line 1167
    const-string v0, ",number"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1168
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1180
    :goto_11
    const/4 v0, 0x0

    .end local p2
    :goto_12
    return-object v0

    .line 1170
    .restart local p2
    :cond_13
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1171
    const-string v0, ",integer"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 1172
    :cond_25
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1173
    const-string v0, ",currency"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 1174
    :cond_37
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1175
    const-string v0, ",percent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 1177
    :cond_49
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1178
    check-cast p2, Ljava/text/DecimalFormat;

    .end local p2
    invoke-virtual {p2}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method private decodeSimpleDateFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;
    .registers 8
    .parameter "buffer"
    .parameter "format"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1184
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v3, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1186
    const-string v0, ",time"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1212
    :goto_15
    const/4 v0, 0x0

    .end local p2
    :goto_16
    return-object v0

    .line 1187
    .restart local p2
    :cond_17
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v3, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1189
    const-string v0, ",date"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 1190
    :cond_29
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1192
    const-string v0, ",time,short"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 1193
    :cond_3b
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1195
    const-string v0, ",date,short"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 1196
    :cond_4d
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v2, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1198
    const-string v0, ",time,long"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 1199
    :cond_5f
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v2, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1201
    const-string v0, ",date,long"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 1202
    :cond_71
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1204
    const-string v0, ",time,full"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 1205
    :cond_83
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1207
    const-string v0, ",date,full"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 1209
    :cond_95
    const-string v0, ",date,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1210
    check-cast p2, Ljava/text/SimpleDateFormat;

    .end local p2
    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "template"
    .parameter "objects"

    .prologue
    .line 772
    new-instance v0, Ljava/text/MessageFormat;

    invoke-direct {v0, p0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatImpl([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;)Ljava/lang/StringBuffer;
    .registers 22
    .parameter "objects"
    .parameter "buffer"
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/Vector",
            "<",
            "Ljava/text/MessageFormat$FieldContainer;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 586
    .local p4, fields:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/text/MessageFormat$FieldContainer;>;"
    new-instance v15, Ljava/text/FieldPosition;

    const/4 v5, 0x0

    invoke-direct {v15, v5}, Ljava/text/FieldPosition;-><init>(I)V

    .line 587
    .local v15, passedField:Ljava/text/FieldPosition;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/MessageFormat;->maxOffset:I

    move v5, v0

    if-gt v13, v5, :cond_10a

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    move-object v5, v0

    aget-object v5, v5, v13

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 589
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 591
    .local v6, begin:I
    if-eqz p1, :cond_8d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object v5, v0

    aget v5, v5, v13

    move-object/from16 v0, p1

    array-length v0, v0

    move v7, v0

    if-ge v5, v7, :cond_8d

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object v5, v0

    aget v5, v5, v13

    aget-object v11, p1, v5

    .line 601
    .local v11, arg:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object v5, v0

    aget-object v12, v5, v13

    .line 602
    .local v12, format:Ljava/text/Format;
    if-eqz v12, :cond_42

    if-nez v11, :cond_4a

    .line 603
    :cond_42
    instance-of v5, v11, Ljava/lang/Number;

    if-eqz v5, :cond_bf

    .line 604
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v12

    .line 614
    :cond_4a
    :goto_4a
    instance-of v5, v12, Ljava/text/ChoiceFormat;

    if-eqz v5, :cond_e3

    .line 615
    invoke-virtual {v12, v11}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 616
    .local v16, result:Ljava/lang/String;
    new-instance v14, Ljava/text/MessageFormat;

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 617
    .local v14, mf:Ljava/text/MessageFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object v5, v0

    invoke-virtual {v14, v5}, Ljava/text/MessageFormat;->setLocale(Ljava/util/Locale;)V

    .line 618
    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 619
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object v5, v0

    aget v8, v5, v13

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/Vector;)V

    .line 621
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    move v3, v6

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/MessageFormat;->handleformat(Ljava/text/Format;Ljava/lang/Object;ILjava/util/Vector;)V

    .line 587
    .end local v11           #arg:Ljava/lang/Object;
    .end local v12           #format:Ljava/text/Format;
    .end local v14           #mf:Ljava/text/MessageFormat;
    .end local v16           #result:Ljava/lang/String;
    :goto_89
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 594
    :cond_8d
    const/16 v5, 0x7b

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object v5, v0

    aget v5, v5, v13

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 596
    const/16 v5, 0x7d

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 597
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object v5, v0

    aget v8, v5, v13

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/Vector;)V

    goto :goto_89

    .line 605
    .restart local v11       #arg:Ljava/lang/Object;
    .restart local v12       #format:Ljava/text/Format;
    :cond_bf
    instance-of v5, v11, Ljava/util/Date;

    if-eqz v5, :cond_c8

    .line 606
    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v12

    goto :goto_4a

    .line 608
    :cond_c8
    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 609
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object v5, v0

    aget v8, v5, v13

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/Vector;)V

    goto :goto_89

    .line 623
    :cond_e3
    move-object v0, v12

    move-object v1, v11

    move-object/from16 v2, p2

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 624
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object v5, v0

    aget v8, v5, v13

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/Vector;)V

    .line 626
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    move v3, v6

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/MessageFormat;->handleformat(Ljava/text/Format;Ljava/lang/Object;ILjava/util/Vector;)V

    goto :goto_89

    .line 629
    .end local v6           #begin:I
    .end local v11           #arg:Ljava/lang/Object;
    .end local v12           #format:Ljava/text/Format;
    :cond_10a
    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/MessageFormat;->maxOffset:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_12d

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/MessageFormat;->maxOffset:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    :cond_12d
    return-object p2
.end method

.method private handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/Vector;)V
    .registers 9
    .parameter "begin"
    .parameter "end"
    .parameter "argnumber"
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/text/FieldPosition;",
            "Ljava/util/Vector",
            "<",
            "Ljava/text/MessageFormat$FieldContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 649
    .local p5, fields:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/text/MessageFormat$FieldContainer;>;"
    if-eqz p5, :cond_12

    .line 650
    new-instance v0, Ljava/text/MessageFormat$FieldContainer;

    sget-object v1, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, p1, p2, v1, v2}, Ljava/text/MessageFormat$FieldContainer;-><init>(IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-virtual {p5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_11
    :goto_11
    return-void

    .line 653
    :cond_12
    if-eqz p4, :cond_11

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    sget-object v1, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    if-ne v0, v1, :cond_11

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    if-nez v0, :cond_11

    .line 656
    invoke-virtual {p4, p1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 657
    invoke-virtual {p4, p2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_11
.end method

.method private handleformat(Ljava/text/Format;Ljava/lang/Object;ILjava/util/Vector;)V
    .registers 14
    .parameter "format"
    .parameter "arg"
    .parameter "begin"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/Format;",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Vector",
            "<",
            "Ljava/text/MessageFormat$FieldContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 698
    .local p4, fields:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/text/MessageFormat$FieldContainer;>;"
    if-eqz p4, :cond_45

    .line 699
    invoke-virtual {p1, p2}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    .line 701
    .local v3, iterator:Ljava/text/AttributedCharacterIterator;
    :goto_6
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v6

    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v7

    if-eq v6, v7, :cond_45

    .line 702
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getRunStart()I

    move-result v4

    .line 703
    .local v4, start:I
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v1

    .line 705
    .local v1, end:I
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 706
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 707
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 709
    .local v0, attribute:Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-interface {v3, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v5

    .line 710
    .local v5, value:Ljava/lang/Object;
    new-instance v6, Ljava/text/MessageFormat$FieldContainer;

    add-int v7, p3, v4

    add-int v8, p3, v1

    invoke-direct {v6, v7, v8, v0, v5}, Ljava/text/MessageFormat$FieldContainer;-><init>(IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-virtual {p4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 713
    .end local v0           #attribute:Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v5           #value:Ljava/lang/Object;
    :cond_41
    invoke-interface {v3, v1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_6

    .line 716
    .end local v1           #end:I
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v3           #iterator:Ljava/text/AttributedCharacterIterator;
    .end local v4           #start:I
    :cond_45
    return-void
.end method

.method private match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I
    .registers 16
    .parameter "string"
    .parameter "position"
    .parameter "last"
    .parameter "tokens"

    .prologue
    const/4 v10, -0x1

    .line 984
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .local v8, length:I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .local v2, offset:I
    const/4 v9, -0x1

    .line 985
    .local v9, token:I
    :goto_a
    if-ge v2, v8, :cond_19

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 986
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 988
    :cond_19
    array-length v7, p4

    .local v7, i:I
    :cond_1a
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_30

    .line 989
    const/4 v1, 0x1

    aget-object v3, p4, v7

    const/4 v4, 0x0

    aget-object v0, p4, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 991
    move v9, v7

    .line 995
    :cond_30
    if-ne v9, v10, :cond_34

    move v0, v10

    .line 1008
    :goto_33
    return v0

    .line 998
    :cond_34
    aget-object v0, p4, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    .line 999
    :goto_3b
    if-ge v2, v8, :cond_4a

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1000
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 1003
    :cond_4a
    if-ge v2, v8, :cond_61

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .local v6, ch:C
    const/16 v0, 0x7d

    if-eq v6, v0, :cond_5a

    if-nez p3, :cond_61

    const/16 v0, 0x2c

    if-ne v6, v0, :cond_61

    .line 1005
    :cond_5a
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    move v0, v9

    .line 1006
    goto :goto_33

    .end local v6           #ch:C
    :cond_61
    move v0, v10

    .line 1008
    goto :goto_33
.end method

.method private parseVariable(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/text/Format;
    .registers 15
    .parameter "string"
    .parameter "position"

    .prologue
    .line 1012
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    .line 1014
    .local v5, offset:I
    if-ge v5, v3, :cond_19

    add-int/lit8 v6, v5, 0x1

    .end local v5           #offset:I
    .local v6, offset:I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, ch:C
    const/16 v8, 0x7d

    if-eq v1, v8, :cond_25

    const/16 v8, 0x2c

    if-eq v1, v8, :cond_25

    move v5, v6

    .line 1017
    .end local v1           #ch:C
    .end local v6           #offset:I
    .restart local v5       #offset:I
    :cond_19
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "text.15"

    invoke-static {v9}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1019
    .end local v5           #offset:I
    .restart local v1       #ch:C
    .restart local v6       #offset:I
    :cond_25
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1020
    const/16 v8, 0x7d

    if-ne v1, v8, :cond_2e

    .line 1021
    const/4 v8, 0x0

    .line 1089
    :goto_2d
    return-object v8

    .line 1023
    :cond_2e
    const/4 v8, 0x0

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "time"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "date"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "number"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "choice"

    aput-object v11, v9, v10

    invoke-direct {p0, p1, p2, v8, v9}, Ljava/text/MessageFormat;->match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I

    move-result v7

    .line 1025
    .local v7, type:I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_59

    .line 1027
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "text.16"

    invoke-static {v9}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1029
    :cond_59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1030
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1031
    packed-switch v7, :pswitch_data_142

    .line 1085
    const/16 v8, 0x7d

    const/16 v9, 0x7b

    :try_start_6f
    invoke-static {p1, p2, v0, v8, v9}, Ljava/text/Format;->upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z
    :try_end_72
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6f .. :try_end_72} :catch_13e

    .line 1089
    :goto_72
    new-instance v8, Ljava/text/ChoiceFormat;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V

    goto :goto_2d

    .line 1034
    :pswitch_7c
    const/16 v8, 0x7d

    if-ne v1, v8, :cond_93

    .line 1035
    const/4 v8, 0x1

    if-ne v7, v8, :cond_8b

    const/4 v8, 0x2

    iget-object v9, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8, v9}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    goto :goto_2d

    :cond_8b
    const/4 v8, 0x2

    iget-object v9, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8, v9}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    goto :goto_2d

    .line 1039
    :cond_93
    const/4 v8, 0x1

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "full"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "long"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "medium"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "short"

    aput-object v11, v9, v10

    invoke-direct {p0, p1, p2, v8, v9}, Ljava/text/MessageFormat;->match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I

    move-result v2

    .line 1041
    .local v2, dateStyle:I
    const/4 v8, -0x1

    if-ne v2, v8, :cond_c6

    .line 1042
    const/16 v8, 0x7d

    const/16 v9, 0x7b

    invoke-static {p1, p2, v0, v8, v9}, Ljava/text/Format;->upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z

    .line 1043
    new-instance v8, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/16 :goto_2d

    .line 1045
    :cond_c6
    packed-switch v2, :pswitch_data_14c

    .line 1059
    :goto_c9
    const/4 v8, 0x1

    if-ne v7, v8, :cond_dc

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v2, v8}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    goto/16 :goto_2d

    .line 1047
    :pswitch_d4
    const/4 v2, 0x0

    .line 1048
    goto :goto_c9

    .line 1050
    :pswitch_d6
    const/4 v2, 0x1

    .line 1051
    goto :goto_c9

    .line 1053
    :pswitch_d8
    const/4 v2, 0x2

    .line 1054
    goto :goto_c9

    .line 1056
    :pswitch_da
    const/4 v2, 0x3

    goto :goto_c9

    .line 1059
    :cond_dc
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v2, v8}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    goto/16 :goto_2d

    .line 1063
    .end local v2           #dateStyle:I
    :pswitch_e4
    const/16 v8, 0x7d

    if-ne v1, v8, :cond_f0

    .line 1065
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_2d

    .line 1068
    :cond_f0
    const/4 v8, 0x1

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "currency"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "percent"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "integer"

    aput-object v11, v9, v10

    invoke-direct {p0, p1, p2, v8, v9}, Ljava/text/MessageFormat;->match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I

    move-result v4

    .line 1070
    .local v4, numberStyle:I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_123

    .line 1071
    const/16 v8, 0x7d

    const/16 v9, 0x7b

    invoke-static {p1, p2, v0, v8, v9}, Ljava/text/Format;->upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z

    .line 1072
    new-instance v8, Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/text/DecimalFormatSymbols;

    iget-object v11, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-direct {v10, v11}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v8, v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    goto/16 :goto_2d

    .line 1075
    :cond_123
    packed-switch v4, :pswitch_data_158

    .line 1081
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_2d

    .line 1077
    :pswitch_12e
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_2d

    .line 1079
    :pswitch_136
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_2d

    .line 1086
    .end local v4           #numberStyle:I
    :catch_13e
    move-exception v8

    goto/16 :goto_72

    .line 1031
    nop

    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_7c
        :pswitch_e4
    .end packed-switch

    .line 1045
    :pswitch_data_14c
    .packed-switch 0x0
        :pswitch_d4
        :pswitch_d6
        :pswitch_d8
        :pswitch_da
    .end packed-switch

    .line 1075
    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_12e
        :pswitch_136
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 13
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1321
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 1322
    .local v1, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v7, "argumentNumbers"

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    check-cast v7, [I

    iput-object v7, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1323
    const-string v7, "formats"

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/text/Format;

    check-cast v7, [Ljava/text/Format;

    iput-object v7, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1324
    const-string v7, "locale"

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Locale;

    iput-object v7, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 1325
    const-string v7, "maxOffset"

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1326
    const-string v7, "offsets"

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    move-object v0, v7

    check-cast v0, [I

    move-object v5, v0

    .line 1327
    .local v5, offsets:[I
    const-string v7, "pattern"

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1329
    .local v6, pattern:Ljava/lang/String;
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gez v7, :cond_6b

    .line 1330
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_69

    move v4, v10

    .line 1335
    .local v4, length:I
    :goto_50
    new-array v7, v4, [Ljava/lang/String;

    iput-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    .line 1336
    const/4 v3, 0x0

    .line 1337
    .local v3, last:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_56
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v7, :cond_7d

    .line 1338
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget v8, v5, v2

    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 1339
    aget v3, v5, v2

    .line 1337
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .end local v2           #i:I
    .end local v3           #last:I
    .end local v4           #length:I
    :cond_69
    move v4, v9

    .line 1330
    goto :goto_50

    .line 1332
    :cond_6b
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    aget v8, v5, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_7b

    move v8, v10

    :goto_78
    add-int v4, v7, v8

    .restart local v4       #length:I
    goto :goto_50

    .end local v4           #length:I
    :cond_7b
    const/4 v8, 0x2

    goto :goto_78

    .line 1341
    .restart local v2       #i:I
    .restart local v3       #last:I
    .restart local v4       #length:I
    :cond_7d
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_96

    .line 1342
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v8, v8

    sub-int/2addr v8, v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1345
    :cond_96
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 11
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1296
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 1297
    .local v1, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v7, "argumentNumbers"

    iget-object v8, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1298
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1299
    .local v0, compatibleFormats:[Ljava/text/Format;
    const-string v7, "formats"

    invoke-virtual {v1, v7, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1300
    const-string v7, "locale"

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1301
    const-string v7, "maxOffset"

    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1302
    const/4 v3, 0x0

    .line 1303
    .local v3, offset:I
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v5, v7, 0x1

    .line 1304
    .local v5, offsetsLength:I
    new-array v4, v5, [I

    .line 1305
    .local v4, offsets:[I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1306
    .local v6, pattern:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2d
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v7, :cond_46

    .line 1307
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    .line 1308
    aput v3, v4, v2

    .line 1309
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1306
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 1311
    :cond_46
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_5a

    .line 1312
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1314
    :cond_5a
    const-string v7, "offsets"

    invoke-virtual {v1, v7, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1315
    const-string v7, "pattern"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1316
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1317
    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .registers 24
    .parameter "template"

    .prologue
    .line 415
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    .line 416
    .local v11, length:I
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 417
    .local v9, buffer:Ljava/lang/StringBuffer;
    new-instance v18, Ljava/text/ParsePosition;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Ljava/text/ParsePosition;-><init>(I)V

    .line 418
    .local v18, position:Ljava/text/ParsePosition;
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 419
    .local v13, localStrings:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 420
    .local v6, argCount:I
    const/16 v19, 0xa

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object v8, v0

    .line 421
    .local v8, args:[I
    const/4 v14, -0x1

    .line 422
    .local v14, maxArg:I
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 423
    .local v12, localFormats:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/text/Format;>;"
    :goto_23
    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    move-result v19

    move/from16 v0, v19

    move v1, v11

    if-ge v0, v1, :cond_c8

    .line 424
    const/16 v19, 0x7b

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object v2, v9

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Ljava/text/Format;->upTo(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;C)Z

    move-result v19

    if-eqz v19, :cond_b4

    .line 426
    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    move-result v16

    .line 427
    .local v16, offset:I
    move/from16 v0, v16

    move v1, v11

    if-ge v0, v1, :cond_61

    add-int/lit8 v17, v16, 0x1

    .end local v16           #offset:I
    .local v17, offset:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0xa

    invoke-static/range {v19 .. v20}, Ljava/lang/Character;->digit(CI)I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move v5, v0

    .local v5, arg:B
    const/16 v19, -0x1

    move v0, v5

    move/from16 v1, v19

    if-ne v0, v1, :cond_6d

    move/from16 v16, v17

    .line 431
    .end local v5           #arg:B
    .end local v17           #offset:I
    .restart local v16       #offset:I
    :cond_61
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "text.19"

    invoke-static/range {v20 .. v20}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 434
    .end local v16           #offset:I
    .restart local v5       #arg:B
    .restart local v17       #offset:I
    :cond_6d
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 435
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;->parseVariable(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/text/Format;

    move-result-object v19

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 436
    move-object v0, v8

    array-length v0, v0

    move/from16 v19, v0

    move v0, v6

    move/from16 v1, v19

    if-lt v0, v1, :cond_ac

    .line 437
    move-object v0, v8

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object v15, v0

    .line 438
    .local v15, newArgs:[I
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v8

    array-length v0, v0

    move/from16 v21, v0

    move-object v0, v8

    move/from16 v1, v19

    move-object v2, v15

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    move-object v8, v15

    .line 441
    .end local v15           #newArgs:[I
    :cond_ac
    add-int/lit8 v7, v6, 0x1

    .end local v6           #argCount:I
    .local v7, argCount:I
    aput v5, v8, v6

    .line 442
    if-le v5, v14, :cond_127

    .line 443
    move v14, v5

    move v6, v7

    .line 446
    .end local v5           #arg:B
    .end local v7           #argCount:I
    .end local v17           #offset:I
    .restart local v6       #argCount:I
    :cond_b4
    :goto_b4
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 447
    const/16 v19, 0x0

    move-object v0, v9

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_23

    .line 449
    :cond_c8
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    .line 450
    const/4 v10, 0x0

    .end local p1
    .local v10, i:I
    :goto_d9
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v19

    move v0, v10

    move/from16 v1, v19

    if-ge v0, v1, :cond_f3

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v13, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, v19, v10

    .line 450
    add-int/lit8 v10, v10, 0x1

    goto :goto_d9

    .line 453
    :cond_f3
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 454
    move v0, v6

    new-array v0, v0, [Ljava/text/Format;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 455
    const/4 v10, 0x0

    :goto_104
    if-ge v10, v6, :cond_117

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v19, v0

    invoke-virtual {v12, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/Format;

    aput-object p1, v19, v10

    .line 455
    add-int/lit8 v10, v10, 0x1

    goto :goto_104

    .line 458
    :cond_117
    const/16 v19, 0x1

    sub-int v19, v6, v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/text/MessageFormat;->maxOffset:I

    .line 459
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Ljava/text/MessageFormat;->maxArgumentIndex:I

    .line 460
    return-void

    .end local v6           #argCount:I
    .end local v10           #i:I
    .restart local v5       #arg:B
    .restart local v7       #argCount:I
    .restart local v17       #offset:I
    .restart local p1
    :cond_127
    move v6, v7

    .end local v7           #argCount:I
    .restart local v6       #argCount:I
    goto :goto_b4
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 472
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/MessageFormat;

    .line 473
    .local v1, clone:Ljava/text/MessageFormat;
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v3, v3

    new-array v0, v3, [Ljava/text/Format;

    .line 474
    .local v0, array:[Ljava/text/Format;
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v2, v3

    .local v2, i:I
    :cond_e
    :goto_e
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_25

    .line 475
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v3, v2

    if-eqz v3, :cond_e

    .line 476
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/Format;

    aput-object v3, v0, v2

    goto :goto_e

    .line 479
    :cond_25
    iput-object v0, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 480
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "object"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 497
    if-ne p0, p1, :cond_6

    move v3, v6

    .line 514
    :goto_5
    return v3

    .line 500
    :cond_6
    instance-of v3, p1, Ljava/text/MessageFormat;

    if-nez v3, :cond_c

    move v3, v5

    .line 501
    goto :goto_5

    .line 503
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/text/MessageFormat;

    move-object v1, v0

    .line 504
    .local v1, format:Ljava/text/MessageFormat;
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    iget v4, v1, Ljava/text/MessageFormat;->maxOffset:I

    if-eq v3, v4, :cond_18

    move v3, v5

    .line 505
    goto :goto_5

    .line 509
    :cond_18
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v3, :cond_2c

    .line 510
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v3, v2

    iget-object v4, v1, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_29

    move v3, v5

    .line 511
    goto :goto_5

    .line 509
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 514
    :cond_2c
    iget-object v3, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    iget-object v4, v1, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget-object v4, v1, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget-object v4, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    move v3, v6

    goto :goto_5

    :cond_4c
    move v3, v5

    goto :goto_5
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "object"
    .parameter "buffer"
    .parameter "field"

    .prologue
    .line 753
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "objects"
    .parameter "buffer"
    .parameter "field"

    .prologue
    .line 581
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/MessageFormat;->formatImpl([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 11
    .parameter "object"

    .prologue
    .line 536
    if-nez p1, :cond_8

    .line 537
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 540
    :cond_8
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 541
    .local v1, buffer:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 544
    .local v3, fields:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/text/MessageFormat$FieldContainer;>;"
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    new-instance v5, Ljava/text/FieldPosition;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-direct {p0, p1, v1, v5, v3}, Ljava/text/MessageFormat;->formatImpl([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;)Ljava/lang/StringBuffer;

    .line 547
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 550
    .local v0, as:Ljava/text/AttributedString;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_29
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_43

    .line 551
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/MessageFormat$FieldContainer;

    .line 552
    .local v2, fc:Ljava/text/MessageFormat$FieldContainer;
    iget-object v5, v2, Ljava/text/MessageFormat$FieldContainer;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v6, v2, Ljava/text/MessageFormat$FieldContainer;->value:Ljava/lang/Object;

    iget v7, v2, Ljava/text/MessageFormat$FieldContainer;->start:I

    iget v8, v2, Ljava/text/MessageFormat$FieldContainer;->end:I

    invoke-virtual {v0, v5, v6, v7, v8}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 550
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 556
    .end local v2           #fc:Ljava/text/MessageFormat$FieldContainer;
    :cond_43
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v5

    return-object v5
.end method

.method public getFormats()[Ljava/text/Format;
    .registers 2

    .prologue
    .line 782
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-virtual {v0}, [Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/text/Format;

    return-object p0
.end method

.method public getFormatsByArgumentIndex()[Ljava/text/Format;
    .registers 5

    .prologue
    .line 794
    iget v2, p0, Ljava/text/MessageFormat;->maxArgumentIndex:I

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Ljava/text/Format;

    .line 795
    .local v0, answer:[Ljava/text/Format;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1a

    .line 796
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v2, v2, v1

    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v3, v1

    aput-object v3, v0, v2

    .line 795
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 798
    :cond_1a
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 844
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 849
    const/4 v0, 0x0

    .line 850
    .local v0, hashCode:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v2, :cond_26

    .line 851
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v2, v2, v1

    iget-object v3, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 852
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v1

    if-eqz v2, :cond_23

    .line 853
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 850
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 856
    :cond_26
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3c

    .line 857
    iget-object v2, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 859
    :cond_3c
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_48

    .line 860
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    .line 862
    :goto_47
    return v2

    :cond_48
    move v2, v0

    goto :goto_47
.end method

.method public parse(Ljava/lang/String;)[Ljava/lang/Object;
    .registers 7
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 877
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 878
    .local v0, position:Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v1

    .line 879
    .local v1, result:[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_22

    .line 880
    :cond_17
    new-instance v2, Ljava/text/ParseException;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 882
    :cond_22
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .registers 15
    .parameter "string"
    .parameter "position"

    .prologue
    const/4 v8, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 906
    if-nez p1, :cond_8

    .line 907
    new-array v8, v8, [Ljava/lang/Object;

    .line 954
    :goto_7
    return-object v8

    .line 909
    :cond_8
    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v8}, Ljava/text/ParsePosition;-><init>(I)V

    .line 910
    .local v2, internalPos:Ljava/text/ParsePosition;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 911
    .local v4, offset:I
    iget v8, p0, Ljava/text/MessageFormat;->maxArgumentIndex:I

    add-int/lit8 v8, v8, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    .line 912
    .local v6, result:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v8, :cond_7c

    .line 913
    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v7, v8, v1

    .line 914
    .local v7, sub:Ljava/lang/String;
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_2b

    .line 915
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v8, v10

    .line 916
    goto :goto_7

    .line 918
    :cond_2b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v4, v8

    .line 920
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v0, v8, v1

    .line 921
    .local v0, format:Ljava/text/Format;
    if-nez v0, :cond_65

    .line 922
    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_5c

    .line 923
    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    add-int/lit8 v9, v1, 0x1

    aget-object v8, v8, v9

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 924
    .local v3, next:I
    if-ne v3, v11, :cond_4e

    .line 925
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v8, v10

    .line 926
    goto :goto_7

    .line 928
    :cond_4e
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 929
    .local v5, parse:Ljava/lang/String;
    move v4, v3

    .line 943
    .end local v3           #next:I
    .end local v5           #parse:Ljava/lang/String;
    :goto_53
    iget-object v8, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v8, v8, v1

    aput-object v5, v6, v8

    .line 912
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 931
    :cond_5c
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 932
    .restart local v5       #parse:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_53

    .line 935
    .end local v5           #parse:Ljava/lang/String;
    :cond_65
    invoke-virtual {v2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 936
    invoke-virtual {v0, p1, v2}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v5

    .line 937
    .local v5, parse:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v8

    if-eq v8, v11, :cond_77

    .line 938
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v8, v10

    .line 939
    goto :goto_7

    .line 941
    :cond_77
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    goto :goto_53

    .line 945
    .end local v0           #format:Ljava/text/Format;
    .end local v5           #parse:Ljava/lang/Object;
    .end local v7           #sub:Ljava/lang/String;
    :cond_7c
    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_9e

    .line 946
    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v9, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v9, v9, 0x1

    aget-object v7, v8, v9

    .line 947
    .restart local v7       #sub:Ljava/lang/String;
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_99

    .line 948
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v8, v10

    .line 949
    goto/16 :goto_7

    .line 951
    :cond_99
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v4, v8

    .line 953
    .end local v7           #sub:Ljava/lang/String;
    :cond_9e
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v8, v6

    .line 954
    goto/16 :goto_7
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .parameter "string"
    .parameter "position"

    .prologue
    .line 979
    invoke-virtual {p0, p1, p2}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setFormat(ILjava/text/Format;)V
    .registers 4
    .parameter "offset"
    .parameter "format"

    .prologue
    .line 1102
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v0, p1

    .line 1103
    return-void
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .registers 5
    .parameter "argIndex"
    .parameter "format"

    .prologue
    .line 812
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_14

    .line 813
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_11

    .line 814
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v1, v0

    .line 812
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 817
    :cond_14
    return-void
.end method

.method public setFormats([Ljava/text/Format;)V
    .registers 6
    .parameter "formats"

    .prologue
    .line 1113
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v1, v2

    .line 1114
    .local v1, min:I
    array-length v2, p1

    if-ge v2, v1, :cond_7

    .line 1115
    array-length v1, p1

    .line 1117
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_13

    .line 1118
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v0

    aput-object v3, v2, v0

    .line 1117
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1120
    :cond_13
    return-void
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .registers 6
    .parameter "formats"

    .prologue
    .line 828
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1d

    .line 829
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_1a

    .line 830
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_17

    .line 831
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v1

    aput-object v3, v2, v0

    .line 829
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 828
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 835
    .end local v0           #i:I
    :cond_1d
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 10
    .parameter "locale"

    .prologue
    const/4 v7, 0x0

    .line 1132
    iput-object p1, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 1133
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v3, :cond_49

    .line 1134
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v0, v3, v1

    .line 1147
    .local v0, format:Ljava/text/Format;
    instance-of v3, v0, Ljava/text/DecimalFormat;

    if-eqz v3, :cond_2e

    .line 1149
    :try_start_10
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    new-instance v4, Ljava/text/DecimalFormat;

    check-cast v0, Ljava/text/DecimalFormat;

    .end local v0           #format:Ljava/text/Format;
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v6, p1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v4, v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    aput-object v4, v3, v1
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_24} :catch_27

    .line 1133
    :cond_24
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1151
    :catch_27
    move-exception v3

    move-object v2, v3

    .line 1152
    .local v2, npe:Ljava/lang/NullPointerException;
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object v7, v3, v1

    goto :goto_24

    .line 1154
    .end local v2           #npe:Ljava/lang/NullPointerException;
    .restart local v0       #format:Ljava/text/Format;
    :cond_2e
    instance-of v3, v0, Ljava/text/SimpleDateFormat;

    if-eqz v3, :cond_24

    .line 1156
    :try_start_32
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    new-instance v4, Ljava/text/SimpleDateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    .end local v0           #format:Ljava/text/Format;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v4, v3, v1
    :try_end_41
    .catch Ljava/lang/NullPointerException; {:try_start_32 .. :try_end_41} :catch_42

    goto :goto_24

    .line 1158
    :catch_42
    move-exception v3

    move-object v2, v3

    .line 1159
    .restart local v2       #npe:Ljava/lang/NullPointerException;
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object v7, v3, v1

    goto :goto_24

    .line 1164
    .end local v2           #npe:Ljava/lang/NullPointerException;
    :cond_49
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .registers 14

    .prologue
    const/16 v12, 0x7d

    const/16 v11, 0x7b

    .line 1222
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1223
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_a
    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v4, v10, :cond_90

    .line 1224
    iget-object v10, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-direct {p0, v0, v10}, Ljava/text/MessageFormat;->appendQuoted(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1226
    iget-object v10, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v10, v10, v4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1227
    iget-object v10, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v10, v4

    .line 1228
    .local v3, format:Ljava/text/Format;
    const/4 v8, 0x0

    .line 1229
    .local v8, pattern:Ljava/lang/String;
    instance-of v10, v3, Ljava/text/ChoiceFormat;

    if-eqz v10, :cond_5e

    .line 1230
    const-string v10, ",choice,"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1231
    check-cast v3, Ljava/text/ChoiceFormat;

    .end local v3           #format:Ljava/text/Format;
    invoke-virtual {v3}, Ljava/text/ChoiceFormat;->toPattern()Ljava/lang/String;

    move-result-object v8

    .line 1241
    :cond_33
    :goto_33
    if-eqz v8, :cond_89

    .line 1242
    const/4 v9, 0x0

    .line 1243
    .local v9, quote:Z
    const/4 v5, 0x0

    .local v5, index:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, length:I
    const/4 v2, 0x0

    .local v2, count:I
    move v6, v5

    .line 1244
    .end local v5           #index:I
    .local v6, index:I
    :goto_3d
    if-ge v6, v7, :cond_89

    .line 1245
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1246
    .local v1, ch:C
    const/16 v10, 0x27

    if-ne v1, v10, :cond_4d

    .line 1247
    if-nez v9, :cond_7e

    const/4 v10, 0x1

    move v9, v10

    .line 1249
    :cond_4d
    :goto_4d
    if-nez v9, :cond_59

    .line 1250
    if-ne v1, v11, :cond_53

    .line 1251
    add-int/lit8 v2, v2, 0x1

    .line 1253
    :cond_53
    if-ne v1, v12, :cond_59

    .line 1254
    if-lez v2, :cond_81

    .line 1255
    add-int/lit8 v2, v2, -0x1

    .line 1262
    :cond_59
    :goto_59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v6, v5

    .line 1263
    .end local v5           #index:I
    .restart local v6       #index:I
    goto :goto_3d

    .line 1232
    .end local v1           #ch:C
    .end local v2           #count:I
    .end local v6           #index:I
    .end local v7           #length:I
    .end local v9           #quote:Z
    .restart local v3       #format:Ljava/text/Format;
    :cond_5e
    instance-of v10, v3, Ljava/text/DecimalFormat;

    if-eqz v10, :cond_67

    .line 1233
    invoke-direct {p0, v0, v3}, Ljava/text/MessageFormat;->decodeDecimalFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;

    move-result-object v8

    goto :goto_33

    .line 1234
    :cond_67
    instance-of v10, v3, Ljava/text/SimpleDateFormat;

    if-eqz v10, :cond_70

    .line 1235
    invoke-direct {p0, v0, v3}, Ljava/text/MessageFormat;->decodeSimpleDateFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;

    move-result-object v8

    goto :goto_33

    .line 1236
    :cond_70
    if-eqz v3, :cond_33

    .line 1238
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "text.17"

    invoke-static {v11}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1247
    .end local v3           #format:Ljava/text/Format;
    .restart local v1       #ch:C
    .restart local v2       #count:I
    .restart local v5       #index:I
    .restart local v7       #length:I
    .restart local v9       #quote:Z
    :cond_7e
    const/4 v10, 0x0

    move v9, v10

    goto :goto_4d

    .line 1257
    :cond_81
    const-string v10, "\'}"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1258
    const/16 v1, 0x27

    goto :goto_59

    .line 1265
    .end local v1           #ch:C
    .end local v2           #count:I
    .end local v5           #index:I
    .end local v7           #length:I
    .end local v9           #quote:Z
    :cond_89
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1223
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    .line 1267
    .end local v8           #pattern:Ljava/lang/String;
    :cond_90
    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v10, v10, 0x1

    iget-object v11, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v10, v11, :cond_a4

    .line 1268
    iget-object v10, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v11, v11, 0x1

    aget-object v10, v10, v11

    invoke-direct {p0, v0, v10}, Ljava/text/MessageFormat;->appendQuoted(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1270
    :cond_a4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method
