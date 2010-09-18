.class Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/PasswordTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordCharSequence"
.end annotation


# instance fields
.field private mSource:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 147
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 14
    .parameter "i"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 154
    iget-object v7, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v7, v7, Landroid/text/Spanned;

    if-eqz v7, :cond_5a

    .line 155
    iget-object v4, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 157
    .local v4, sp:Landroid/text/Spanned;
    sget-object v7, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 158
    .local v5, st:I
    sget-object v7, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 160
    .local v3, en:I
    if-lt p1, v5, :cond_24

    if-ge p1, v3, :cond_24

    .line 161
    iget-object v7, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v7, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 194
    .end local v3           #en:I
    .end local v4           #sp:Landroid/text/Spanned;
    .end local v5           #st:I
    :goto_23
    return v7

    .line 164
    .restart local v3       #en:I
    .restart local v4       #sp:Landroid/text/Spanned;
    .restart local v5       #st:I
    :cond_24
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v7

    const-class v8, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-interface {v4, v9, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 166
    .local v6, visible:[Landroid/text/method/PasswordTransformationMethod$Visible;
    const/4 v0, 0x0

    .local v0, a:I
    :goto_31
    array-length v7, v6

    if-ge v0, v7, :cond_5a

    .line 167
    aget-object v7, v6, v0

    invoke-static {v7}, Landroid/text/method/PasswordTransformationMethod$Visible;->access$000(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_57

    .line 168
    aget-object v7, v6, v0

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 169
    aget-object v7, v6, v0

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 171
    if-lt p1, v5, :cond_57

    if-ge p1, v3, :cond_57

    .line 172
    iget-object v7, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v7, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    goto :goto_23

    .line 166
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 179
    .end local v0           #a:I
    .end local v3           #en:I
    .end local v4           #sp:Landroid/text/Spanned;
    .end local v5           #st:I
    .end local v6           #visible:[Landroid/text/method/PasswordTransformationMethod$Visible;
    :cond_5a
    iget-object v7, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_88

    .line 183
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v7

    new-array v1, v7, [C

    .line 184
    .local v1, chs:[C
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v7

    new-array v2, v7, [B

    .line 186
    .local v2, dirs:[B
    iget-object v7, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-static {v7, v9, v10, v1, v9}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 187
    invoke-static {v1, v2, v10}, Landroid/text/AndroidCharacter;->getDirectionalities([C[BI)V

    .line 188
    aget-byte v7, v2, v9

    if-eq v7, v10, :cond_7e

    aget-byte v7, v2, v9

    if-ne v7, v11, :cond_83

    .line 190
    :cond_7e
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$100()C

    move-result v7

    goto :goto_23

    .line 192
    :cond_83
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$200()C

    move-result v7

    goto :goto_23

    .line 194
    .end local v1           #chs:[C
    .end local v2           #dirs:[B
    :cond_88
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$200()C

    move-result v7

    goto :goto_23
.end method

.method public getChars(II[CI)V
    .registers 26
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "off"

    .prologue
    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 214
    const/4 v14, -0x1

    .local v14, st:I
    const/4 v9, -0x1

    .line 215
    .local v9, en:I
    const/4 v12, 0x0

    .line 216
    .local v12, nvisible:I
    const/4 v15, 0x0

    .local v15, starts:[I
    const/4 v10, 0x0

    .line 218
    .local v10, ends:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v17, v0

    if-eqz v17, :cond_87

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move-object v13, v0

    check-cast v13, Landroid/text/Spanned;

    .line 221
    .local v13, sp:Landroid/text/Spanned;
    sget-object v17, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    .line 222
    sget-object v17, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 224
    const/16 v17, 0x0

    invoke-interface {v13}, Landroid/text/Spanned;->length()I

    move-result v18

    const-class v19, Landroid/text/method/PasswordTransformationMethod$Visible;

    move-object v0, v13

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 225
    .local v16, visible:[Landroid/text/method/PasswordTransformationMethod$Visible;
    move-object/from16 v0, v16

    array-length v0, v0

    move v12, v0

    .line 226
    new-array v15, v12, [I

    .line 227
    new-array v10, v12, [I

    .line 229
    const/4 v11, 0x0

    .local v11, i:I
    :goto_5d
    if-ge v11, v12, :cond_87

    .line 230
    aget-object v17, v16, v11

    invoke-static/range {v17 .. v17}, Landroid/text/method/PasswordTransformationMethod$Visible;->access$000(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v17

    if-ltz v17, :cond_84

    .line 231
    aget-object v17, v16, v11

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v17

    aput v17, v15, v11

    .line 232
    aget-object v17, v16, v11

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    aput v17, v10, v11

    .line 229
    :cond_84
    add-int/lit8 v11, v11, 0x1

    goto :goto_5d

    .line 239
    .end local v11           #i:I
    .end local v13           #sp:Landroid/text/Spanned;
    .end local v16           #visible:[Landroid/text/method/PasswordTransformationMethod$Visible;
    :cond_87
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-lez v17, :cond_117

    .line 243
    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [C

    move-object v7, v0

    .line 244
    .local v7, chs:[C
    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v8, v0

    .line 246
    .local v8, dirs:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object v3, v7

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 247
    const/16 v17, 0x1

    move-object v0, v7

    move-object v1, v8

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/text/AndroidCharacter;->getDirectionalities([C[BI)V

    .line 248
    const/16 v17, 0x0

    aget-byte v17, v8, v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e2

    const/16 v17, 0x0

    aget-byte v17, v8, v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_112

    .line 250
    :cond_e2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$100()C

    move-result v5

    .line 253
    .local v5, CUR_DOT:C
    :goto_e6
    const/4 v8, 0x0

    .line 260
    .end local v7           #chs:[C
    .end local v8           #dirs:[B
    :goto_e7
    move/from16 v11, p1

    .restart local v11       #i:I
    :goto_e9
    move v0, v11

    move/from16 v1, p2

    if-ge v0, v1, :cond_11f

    .line 261
    if-lt v11, v14, :cond_f2

    if-lt v11, v9, :cond_10f

    .line 262
    :cond_f2
    const/16 v16, 0x0

    .line 264
    .local v16, visible:Z
    const/4 v6, 0x0

    .local v6, a:I
    :goto_f5
    if-ge v6, v12, :cond_107

    .line 265
    aget v17, v15, v6

    move v0, v11

    move/from16 v1, v17

    if-lt v0, v1, :cond_11c

    aget v17, v10, v6

    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_11c

    .line 266
    const/16 v16, 0x1

    .line 271
    :cond_107
    if-nez v16, :cond_10f

    .line 274
    sub-int v17, v11, p1

    add-int v17, v17, p4

    aput-char v5, p3, v17

    .line 260
    .end local v6           #a:I
    .end local v16           #visible:Z
    :cond_10f
    add-int/lit8 v11, v11, 0x1

    goto :goto_e9

    .line 252
    .end local v5           #CUR_DOT:C
    .end local v11           #i:I
    .restart local v7       #chs:[C
    .restart local v8       #dirs:[B
    :cond_112
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$200()C

    move-result v5

    .restart local v5       #CUR_DOT:C
    goto :goto_e6

    .line 256
    .end local v5           #CUR_DOT:C
    .end local v7           #chs:[C
    .end local v8           #dirs:[B
    :cond_117
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$200()C

    move-result v5

    .restart local v5       #CUR_DOT:C
    goto :goto_e7

    .line 264
    .restart local v6       #a:I
    .restart local v11       #i:I
    .restart local v16       #visible:Z
    :cond_11c
    add-int/lit8 v6, v6, 0x1

    goto :goto_f5

    .line 281
    .end local v6           #a:I
    .end local v16           #visible:Z
    :cond_11f
    return-void
.end method

.method public length()I
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 201
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .line 203
    .local v0, buf:[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->getChars(II[CI)V

    .line 204
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
