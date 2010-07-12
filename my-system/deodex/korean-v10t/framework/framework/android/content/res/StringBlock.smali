.class final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$Height;,
        Landroid/content/res/StringBlock$StyleIDs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z


# instance fields
.field private final mNative:I

.field private final mOwnsNative:Z

.field private mSparseStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:[Ljava/lang/CharSequence;

.field mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

.field private final mUseSparse:Z


# direct methods
.method constructor <init>(IZ)V
    .registers 4
    .parameter "obj"
    .parameter "useSparse"

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 392
    iput p1, p0, Landroid/content/res/StringBlock;->mNative:I

    .line 393
    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 397
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .registers 6
    .parameter "data"
    .parameter "offset"
    .parameter "size"
    .parameter "useSparse"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 54
    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)I

    move-result v0

    iput v0, p0, Landroid/content/res/StringBlock;->mNative:I

    .line 55
    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 59
    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 5
    .parameter "data"
    .parameter "useSparse"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 46
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/content/res/StringBlock;->nativeCreate([BII)I

    move-result v0

    iput v0, p0, Landroid/content/res/StringBlock;->mNative:I

    .line 47
    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 51
    return-void
.end method

.method private static addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 8
    .parameter "buffer"
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 271
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 273
    .local v0, len:I
    if-eqz p2, :cond_1f

    if-eq p2, v0, :cond_1f

    sub-int v1, p2, v2

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_1f

    .line 274
    add-int/lit8 p2, p2, -0x1

    :goto_15
    if-lez p2, :cond_1f

    .line 275
    sub-int v1, p2, v2

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_3d

    .line 281
    :cond_1f
    if-eqz p3, :cond_37

    if-eq p3, v0, :cond_37

    sub-int v1, p3, v2

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_37

    .line 282
    add-int/lit8 p3, p3, 0x1

    :goto_2d
    if-ge p3, v0, :cond_37

    .line 283
    sub-int v1, p3, v2

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_40

    .line 289
    :cond_37
    const/16 v1, 0x33

    invoke-interface {p0, p1, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 290
    return-void

    .line 274
    :cond_3d
    add-int/lit8 p2, p2, -0x1

    goto :goto_15

    .line 282
    :cond_40
    add-int/lit8 p3, p3, 0x1

    goto :goto_2d
.end method

.method private applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;
    .registers 26
    .parameter "str"
    .parameter "style"
    .parameter "ids"

    .prologue
    .line 135
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_a

    move-object/from16 v18, p1

    .line 261
    :goto_9
    return-object v18

    .line 138
    :cond_a
    new-instance v5, Landroid/text/SpannableString;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 139
    .local v5, buffer:Landroid/text/SpannableString;
    const/4 v8, 0x0

    .line 140
    .local v8, i:I
    :goto_13
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_36a

    .line 141
    aget v16, p2, v8

    .line 146
    .local v16, type:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_4b

    .line 147
    new-instance v18, Landroid/text/style/StyleSpan;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 259
    :cond_48
    :goto_48
    add-int/lit8 v8, v8, 0x3

    .line 260
    goto :goto_13

    .line 150
    :cond_4b
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$100(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_75

    .line 151
    new-instance v18, Landroid/text/style/StyleSpan;

    const/16 v19, 0x2

    invoke-direct/range {v18 .. v19}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_48

    .line 154
    :cond_75
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$200(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_9d

    .line 155
    new-instance v18, Landroid/text/style/UnderlineSpan;

    invoke-direct/range {v18 .. v18}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_48

    .line 158
    :cond_9d
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$300(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_c7

    .line 159
    new-instance v18, Landroid/text/style/TypefaceSpan;

    const-string v19, "monospace"

    invoke-direct/range {v18 .. v19}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_48

    .line 162
    :cond_c7
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$400(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_f2

    .line 163
    new-instance v18, Landroid/text/style/RelativeSizeSpan;

    const/high16 v19, 0x3fa0

    invoke-direct/range {v18 .. v19}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_48

    .line 166
    :cond_f2
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$500(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_11e

    .line 167
    new-instance v18, Landroid/text/style/RelativeSizeSpan;

    const v19, 0x3f4ccccd

    invoke-direct/range {v18 .. v19}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_48

    .line 170
    :cond_11e
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$700(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_147

    .line 171
    new-instance v18, Landroid/text/style/SubscriptSpan;

    invoke-direct/range {v18 .. v18}, Landroid/text/style/SubscriptSpan;-><init>()V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_48

    .line 174
    :cond_147
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$600(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_170

    .line 175
    new-instance v18, Landroid/text/style/SuperscriptSpan;

    invoke-direct/range {v18 .. v18}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_48

    .line 178
    :cond_170
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$800(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_199

    .line 179
    new-instance v18, Landroid/text/style/StrikethroughSpan;

    invoke-direct/range {v18 .. v18}, Landroid/text/style/StrikethroughSpan;-><init>()V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_48

    .line 182
    :cond_199
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$900(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c0

    .line 183
    new-instance v18, Landroid/text/style/BulletSpan;

    const/16 v19, 0xa

    invoke-direct/range {v18 .. v19}, Landroid/text/style/BulletSpan;-><init>(I)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto/16 :goto_48

    .line 185
    :cond_1c0
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$1000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1e6

    .line 186
    sget-object v18, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x12

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_48

    .line 190
    :cond_1e6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/res/StringBlock;->mNative:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeGetString(II)Ljava/lang/String;

    move-result-object v15

    .line 192
    .local v15, tag:Ljava/lang/String;
    const-string v18, "font;"

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2c7

    .line 195
    const-string v18, ";height="

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 196
    .local v13, sub:Ljava/lang/String;
    if-eqz v13, :cond_22a

    .line 197
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 198
    .local v12, size:I
    new-instance v18, Landroid/content/res/StringBlock$Height;

    move-object/from16 v0, v18

    move v1, v12

    invoke-direct {v0, v1}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 202
    .end local v12           #size:I
    :cond_22a
    const-string v18, ";size="

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 203
    if-eqz v13, :cond_25d

    .line 204
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 205
    .restart local v12       #size:I
    new-instance v18, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move v1, v12

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 210
    .end local v12           #size:I
    :cond_25d
    const-string v18, ";fgcolor="

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 211
    if-eqz v13, :cond_291

    .line 212
    const/16 v18, -0x1

    move-object v0, v13

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v6

    .line 213
    .local v6, color:I
    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v18

    move v1, v6

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 218
    .end local v6           #color:I
    :cond_291
    const-string v18, ";bgcolor="

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 219
    if-eqz v13, :cond_48

    .line 220
    const/16 v18, -0x1

    move-object v0, v13

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v6

    .line 221
    .restart local v6       #color:I
    new-instance v18, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, v18

    move v1, v6

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_48

    .line 225
    .end local v6           #color:I
    .end local v13           #sub:Ljava/lang/String;
    :cond_2c7
    const-string v18, "a;"

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2ff

    .line 228
    const-string v18, ";href="

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 229
    .restart local v13       #sub:Ljava/lang/String;
    if-eqz v13, :cond_48

    .line 230
    new-instance v18, Landroid/text/style/URLSpan;

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-direct {v0, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_48

    .line 234
    .end local v13           #sub:Ljava/lang/String;
    :cond_2ff
    const-string v18, "annotation;"

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_48

    .line 235
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    .line 238
    .local v10, len:I
    const/16 v18, 0x3b

    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .local v14, t:I
    :goto_317
    if-ge v14, v10, :cond_48

    .line 239
    const/16 v18, 0x3d

    move-object v0, v15

    move/from16 v1, v18

    move v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 240
    .local v7, eq:I
    if-ltz v7, :cond_48

    .line 244
    const/16 v18, 0x3b

    move-object v0, v15

    move/from16 v1, v18

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 245
    .local v11, next:I
    if-gez v11, :cond_332

    .line 246
    move v11, v10

    .line 249
    :cond_332
    add-int/lit8 v18, v14, 0x1

    move-object v0, v15

    move/from16 v1, v18

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 250
    .local v9, key:Ljava/lang/String;
    add-int/lit8 v18, v7, 0x1

    move-object v0, v15

    move/from16 v1, v18

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 252
    .local v17, value:Ljava/lang/String;
    new-instance v18, Landroid/text/Annotation;

    move-object/from16 v0, v18

    move-object v1, v9

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 238
    move v14, v11

    goto :goto_317

    .line 261
    .end local v7           #eq:I
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #len:I
    .end local v11           #next:I
    .end local v14           #t:I
    .end local v15           #tag:Ljava/lang/String;
    .end local v16           #type:I
    .end local v17           #value:Ljava/lang/String;
    :cond_36a
    new-instance v18, Landroid/text/SpannedString;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_9
.end method

.method private static final native nativeCreate([BII)I
.end method

.method private static final native nativeDestroy(I)V
.end method

.method private static final native nativeGetSize(I)I
.end method

.method private static final native nativeGetString(II)Ljava/lang/String;
.end method

.method private static final native nativeGetStyle(II)[I
.end method

.method private static final native nativeIndexOfString(ILjava/lang/String;)I
.end method

.method private static subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "full"
    .parameter "attribute"

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 294
    .local v1, start:I
    if-gez v1, :cond_8

    .line 295
    const/4 v2, 0x0

    .line 304
    :goto_7
    return-object v2

    .line 298
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 299
    const/16 v2, 0x3b

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 301
    .local v0, end:I
    if-gez v0, :cond_1a

    .line 302
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 304
    :cond_1a
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_9

    .line 116
    iget v0, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v0}, Landroid/content/res/StringBlock;->nativeDestroy(I)V

    .line 118
    :cond_9
    return-void
.end method

.method public get(I)Ljava/lang/CharSequence;
    .registers 9
    .parameter "idx"

    .prologue
    .line 62
    monitor-enter p0

    .line 63
    :try_start_1
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_d

    .line 64
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aget-object v1, v4, p1

    .line 65
    .local v1, res:Ljava/lang/CharSequence;
    if-eqz v1, :cond_35

    .line 66
    monitor-exit p0

    .line 110
    :goto_c
    return-object v1

    .line 68
    .end local v1           #res:Ljava/lang/CharSequence;
    :cond_d
    iget-object v4, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v4, :cond_20

    .line 69
    iget-object v4, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 70
    .restart local v1       #res:Ljava/lang/CharSequence;
    if-eqz v1, :cond_35

    .line 71
    monitor-exit p0

    goto :goto_c

    .line 111
    .end local v1           #res:Ljava/lang/CharSequence;
    :catchall_1d
    move-exception v4

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v4

    .line 74
    :cond_20
    :try_start_20
    iget v4, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v4}, Landroid/content/res/StringBlock;->nativeGetSize(I)I

    move-result v0

    .line 75
    .local v0, num:I
    iget-boolean v4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v4, :cond_ef

    const/16 v4, 0xfa

    if-le v0, v4, :cond_ef

    .line 76
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    .line 81
    .end local v0           #num:I
    :cond_35
    :goto_35
    iget v4, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v4, p1}, Landroid/content/res/StringBlock;->nativeGetString(II)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, str:Ljava/lang/String;
    move-object v1, v2

    .line 83
    .restart local v1       #res:Ljava/lang/CharSequence;
    iget v4, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v4, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(II)[I

    move-result-object v3

    .line 86
    .local v3, style:[I
    if-eqz v3, :cond_e4

    .line 87
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v4, :cond_de

    .line 88
    new-instance v4, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v4}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 89
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "b"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$002(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 90
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "i"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$102(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 91
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "u"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$202(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 92
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "tt"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$302(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 93
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "big"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$402(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 94
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "small"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$502(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 95
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "sup"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$602(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 96
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "sub"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$702(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 97
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "strike"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$802(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 98
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "li"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$902(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 99
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "marquee"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$1002(Landroid/content/res/StringBlock$StyleIDs;I)I

    .line 106
    :cond_de
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v2, v3, v4}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 108
    :cond_e4
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_f5

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aput-object v1, v4, p1

    .line 110
    :goto_ec
    monitor-exit p0

    goto/16 :goto_c

    .line 78
    .end local v1           #res:Ljava/lang/CharSequence;
    .end local v2           #str:Ljava/lang/String;
    .end local v3           #style:[I
    .restart local v0       #num:I
    :cond_ef
    new-array v4, v0, [Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    goto/16 :goto_35

    .line 109
    .end local v0           #num:I
    .restart local v1       #res:Ljava/lang/CharSequence;
    .restart local v2       #str:Ljava/lang/String;
    .restart local v3       #style:[I
    :cond_f5
    iget-object v4, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_fa
    .catchall {:try_start_20 .. :try_end_fa} :catchall_1d

    goto :goto_ec
.end method
