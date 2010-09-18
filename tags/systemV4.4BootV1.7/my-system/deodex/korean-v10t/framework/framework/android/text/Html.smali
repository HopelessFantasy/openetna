.class public Landroid/text/Html;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Html$HtmlParser;,
        Landroid/text/Html$TagHandler;,
        Landroid/text/Html$ImageGetter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 2
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-static {p0, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .registers 8
    .parameter "source"
    .parameter "imageGetter"
    .parameter "tagHandler"

    .prologue
    .line 124
    new-instance v2, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v2}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    .line 126
    .local v2, parser:Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_5
    const-string v3, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Landroid/text/Html$HtmlParser;->access$000()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_5 .. :try_end_e} :catch_18
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_5 .. :try_end_e} :catch_20

    .line 135
    new-instance v0, Landroid/text/HtmlToSpannedConverter;

    invoke-direct {v0, p0, p1, p2, v2}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;)V

    .line 138
    .local v0, converter:Landroid/text/HtmlToSpannedConverter;
    invoke-virtual {v0}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object v3

    return-object v3

    .line 127
    .end local v0           #converter:Landroid/text/HtmlToSpannedConverter;
    :catch_18
    move-exception v3

    move-object v1, v3

    .line 129
    .local v1, e:Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 130
    .end local v1           #e:Lorg/xml/sax/SAXNotRecognizedException;
    :catch_20
    move-exception v3

    move-object v1, v3

    .line 132
    .local v1, e:Lorg/xml/sax/SAXNotSupportedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .registers 3
    .parameter "text"

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, out:Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 12
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0xa

    .line 207
    const-string v0, "<p>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    move v2, p2

    .local v2, i:I
    :goto_8
    if-ge v2, p3, :cond_2f

    .line 211
    invoke-static {p1, v7, v2, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    .line 212
    .local v6, next:I
    if-gez v6, :cond_11

    .line 213
    move v6, p3

    .line 216
    :cond_11
    const/4 v4, 0x0

    .line 218
    .local v4, nl:I
    :goto_12
    if-ge v6, p3, :cond_1f

    invoke-interface {p1, v6}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_1f

    .line 219
    add-int/lit8 v4, v4, 0x1

    .line 220
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 223
    :cond_1f
    sub-int v3, v6, v4

    if-ne v6, p3, :cond_2c

    const/4 v0, 0x1

    move v5, v0

    :goto_25
    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V

    .line 210
    move v2, v6

    goto :goto_8

    .line 223
    :cond_2c
    const/4 v0, 0x0

    move v5, v0

    goto :goto_25

    .line 226
    .end local v4           #nl:I
    .end local v6           #next:I
    :cond_2f
    const-string v0, "</p>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 13
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const-class v8, Landroid/text/style/QuoteSpan;

    .line 189
    move v1, p2

    .local v1, i:I
    :goto_3
    if-ge v1, p3, :cond_36

    .line 190
    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v1, p3, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 191
    .local v4, next:I
    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v1, v4, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/QuoteSpan;

    .line 193
    .local v6, quotes:[Landroid/text/style/QuoteSpan;
    move-object v0, v6

    .local v0, arr$:[Landroid/text/style/QuoteSpan;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_16
    if-ge v2, v3, :cond_22

    aget-object v5, v0, v2

    .line 194
    .local v5, quote:Landroid/text/style/QuoteSpan;
    const-string v7, "<blockquote>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 197
    .end local v5           #quote:Landroid/text/style/QuoteSpan;
    :cond_22
    invoke-static {p0, p1, v1, v4}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 199
    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v3, :cond_34

    aget-object v5, v0, v2

    .line 200
    .restart local v5       #quote:Landroid/text/style/QuoteSpan;
    const-string v7, "</blockquote>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 189
    .end local v5           #quote:Landroid/text/style/QuoteSpan;
    :cond_34
    move v1, v4

    goto :goto_3

    .line 203
    .end local v0           #arr$:[Landroid/text/style/QuoteSpan;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #next:I
    .end local v6           #quotes:[Landroid/text/style/QuoteSpan;
    :cond_36
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V
    .registers 13
    .parameter "out"
    .parameter "text"

    .prologue
    const-class v10, Landroid/text/style/ParagraphStyle;

    .line 151
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    .line 154
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v8

    if-ge v2, v8, :cond_a2

    .line 155
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v4, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 156
    .local v6, next:I
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v6, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ParagraphStyle;

    .line 157
    .local v7, style:[Landroid/text/style/ParagraphStyle;
    const-string v1, " "

    .line 158
    .local v1, elements:Ljava/lang/String;
    const/4 v5, 0x0

    .line 160
    .local v5, needDiv:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1f
    array-length v8, v7

    if-ge v3, v8, :cond_77

    .line 161
    aget-object v8, v7, v3

    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v8, :cond_48

    .line 162
    aget-object v8, v7, v3

    check-cast v8, Landroid/text/style/AlignmentSpan;

    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 164
    .local v0, align:Landroid/text/Layout$Alignment;
    const/4 v5, 0x1

    .line 165
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_4b

    .line 166
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"center\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .end local v0           #align:Landroid/text/Layout$Alignment;
    :cond_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 167
    .restart local v0       #align:Landroid/text/Layout$Alignment;
    :cond_4b
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_63

    .line 168
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"right\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_48

    .line 170
    :cond_63
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"left\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_48

    .line 174
    .end local v0           #align:Landroid/text/Layout$Alignment;
    :cond_77
    if-eqz v5, :cond_95

    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<div "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_95
    invoke-static {p0, p1, v2, v6}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 180
    if-eqz v5, :cond_9f

    .line 181
    const-string v8, "</div>"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_9f
    move v2, v6

    goto/16 :goto_7

    .line 184
    .end local v1           #elements:Ljava/lang/String;
    .end local v3           #j:I
    .end local v5           #needDiv:Z
    .end local v6           #next:I
    .end local v7           #style:[Landroid/text/style/ParagraphStyle;
    :cond_a2
    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V
    .registers 12
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "nl"
    .parameter "last"

    .prologue
    .line 233
    move p2, p2

    .local p2, i:I
    :goto_1
    if-ge p2, p3, :cond_1ac

    .line 234
    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 235
    .local v2, next:I
    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, p2, v2, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/CharacterStyle;

    .line 238
    .local v3, style:[Landroid/text/style/CharacterStyle;
    const/4 v0, 0x0

    .local v0, j:I
    move v1, v0

    .end local v0           #j:I
    .local v1, j:I
    :goto_13
    array-length v0, v3

    if-ge v1, v0, :cond_115

    .line 239
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/StyleSpan;

    if-eqz v0, :cond_36

    .line 240
    aget-object v0, v3, v1

    check-cast v0, Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v0

    .line 242
    .local v0, s:I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_2d

    .line 243
    const-string v4, "<b>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_2d
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_36

    .line 246
    .end local v0           #s:I
    const-string v0, "<i>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_36
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/TypefaceSpan;

    if-eqz v0, :cond_51

    .line 250
    aget-object v0, v3, v1

    check-cast v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, s:Ljava/lang/String;
    const-string v4, "monospace"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0           #s:Ljava/lang/String;
    if-eqz v0, :cond_51

    .line 253
    const-string v0, "<tt>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_51
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/SuperscriptSpan;

    if-eqz v0, :cond_5c

    .line 257
    const-string v0, "<sup>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_5c
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/SubscriptSpan;

    if-eqz v0, :cond_67

    .line 260
    const-string v0, "<sub>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_67
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/UnderlineSpan;

    if-eqz v0, :cond_72

    .line 263
    const-string v0, "<u>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_72
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/StrikethroughSpan;

    if-eqz v0, :cond_7d

    .line 266
    const-string v0, "<strike>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_7d
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/URLSpan;

    if-eqz v0, :cond_98

    .line 269
    const-string v0, "<a href=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    aget-object v0, v3, v1

    check-cast v0, Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v0, "\">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_98
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/ImageSpan;

    if-eqz v0, :cond_1d4

    .line 274
    const-string p2, "<img src=\""

    .end local p2           #i:I
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    aget-object p2, v3, v1

    check-cast p2, Landroid/text/style/ImageSpan;

    invoke-virtual {p2}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string p2, "\">"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    move p2, v2

    .restart local p2       #i:I
    move v0, p2

    .line 281
    .end local p2           #i:I
    .local v0, i:I
    :goto_b5
    aget-object p2, v3, v1

    instance-of p2, p2, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz p2, :cond_d2

    .line 282
    const-string p2, "<font size =\""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    aget-object p2, v3, v1

    check-cast p2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p2}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result p2

    div-int/lit8 p2, p2, 0x6

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    const-string p2, "\">"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_d2
    aget-object p2, v3, v1

    instance-of p2, p2, Landroid/text/style/ForegroundColorSpan;

    if-eqz p2, :cond_10f

    .line 287
    const-string p2, "<font color =\"#"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    aget-object p2, v3, v1

    check-cast p2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result p2

    const/high16 v4, 0x100

    add-int/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .line 290
    .local p2, color:Ljava/lang/String;
    :goto_ec
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_107

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2           #color:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .restart local p2       #color:Ljava/lang/String;
    goto :goto_ec

    .line 293
    :cond_107
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string p2, "\">"

    .end local p2           #color:Ljava/lang/String;
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_10f
    add-int/lit8 p2, v1, 0x1

    .end local v1           #j:I
    .local p2, j:I
    move v1, p2

    .end local p2           #j:I
    .restart local v1       #j:I
    move p2, v0

    .end local v0           #i:I
    .local p2, i:I
    goto/16 :goto_13

    .line 298
    :cond_115
    invoke-static {p0, p1, p2, v2}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 300
    array-length p2, v3

    .end local p2           #i:I
    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .end local v1           #j:I
    .local p2, j:I
    :goto_11b
    if-ltz p2, :cond_1a9

    .line 301
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/ForegroundColorSpan;

    if-eqz v0, :cond_128

    .line 302
    const-string v0, "</font>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_128
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v0, :cond_133

    .line 305
    const-string v0, "</font>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_133
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/URLSpan;

    if-eqz v0, :cond_13e

    .line 308
    const-string v0, "</a>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_13e
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/StrikethroughSpan;

    if-eqz v0, :cond_149

    .line 311
    const-string v0, "</strike>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_149
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/UnderlineSpan;

    if-eqz v0, :cond_154

    .line 314
    const-string v0, "</u>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_154
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/SubscriptSpan;

    if-eqz v0, :cond_15f

    .line 317
    const-string v0, "</sub>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_15f
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/SuperscriptSpan;

    if-eqz v0, :cond_16a

    .line 320
    const-string v0, "</sup>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_16a
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/TypefaceSpan;

    if-eqz v0, :cond_185

    .line 323
    aget-object v0, v3, p2

    check-cast v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, s:Ljava/lang/String;
    const-string v1, "monospace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0           #s:Ljava/lang/String;
    if-eqz v0, :cond_185

    .line 326
    const-string v0, "</tt>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_185
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/StyleSpan;

    if-eqz v0, :cond_1a5

    .line 330
    aget-object v0, v3, p2

    check-cast v0, Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v0

    .line 332
    .local v0, s:I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_19c

    .line 333
    const-string v1, "</b>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_19c
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1a5

    .line 336
    .end local v0           #s:I
    const-string v0, "</i>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_1a5
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_11b

    .line 233
    :cond_1a9
    move p2, v2

    .local p2, i:I
    goto/16 :goto_1

    .line 342
    .end local v2           #next:I
    .end local v3           #style:[Landroid/text/style/CharacterStyle;
    :cond_1ac
    if-eqz p5, :cond_1ba

    const-string p1, ""

    .end local p1
    move-object p2, p1

    .line 344
    .local p2, p:Ljava/lang/String;
    :goto_1b1
    const/4 p1, 0x1

    if-ne p4, p1, :cond_1be

    .line 345
    const-string p1, "<br>\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .end local p3
    :goto_1b9
    return-void

    .line 342
    .restart local p1
    .local p2, i:I
    .restart local p3
    :cond_1ba
    const-string p1, "</p>\n<p>"

    move-object p2, p1

    goto :goto_1b1

    .line 346
    .end local p1
    .local p2, p:Ljava/lang/String;
    :cond_1be
    const/4 p1, 0x2

    if-ne p4, p1, :cond_1c5

    .line 347
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b9

    .line 349
    :cond_1c5
    const/4 p1, 0x2

    .end local p3
    .local p1, i:I
    :goto_1c6
    if-ge p1, p4, :cond_1d0

    .line 350
    const-string p3, "<br>"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c6

    .line 353
    :cond_1d0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b9

    .restart local v1       #j:I
    .restart local v2       #next:I
    .restart local v3       #style:[Landroid/text/style/CharacterStyle;
    .local p1, text:Landroid/text/Spanned;
    .local p2, i:I
    .restart local p3
    :cond_1d4
    move v0, p2

    .end local p2           #i:I
    .local v0, i:I
    goto/16 :goto_b5
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 9
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v4, 0x20

    .line 359
    move v1, p2

    .local v1, i:I
    :goto_3
    if-ge v1, p3, :cond_6a

    .line 360
    invoke-interface {p1, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 362
    .local v0, c:C
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_15

    .line 363
    const-string v2, "&lt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 364
    :cond_15
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_1f

    .line 365
    const-string v2, "&gt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 366
    :cond_1f
    const/16 v2, 0x26

    if-ne v0, v2, :cond_29

    .line 367
    const-string v2, "&amp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 368
    :cond_29
    const/16 v2, 0x7e

    if-gt v0, v2, :cond_2f

    if-ge v0, v4, :cond_4c

    .line 369
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 370
    :cond_4c
    if-ne v0, v4, :cond_66

    .line 371
    :goto_4e
    add-int/lit8 v2, v1, 0x1

    if-ge v2, p3, :cond_62

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_62

    .line 372
    const-string v2, "&nbsp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 376
    :cond_62
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 378
    :cond_66
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 381
    .end local v0           #c:C
    :cond_6a
    return-void
.end method
