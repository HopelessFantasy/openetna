.class public Landroid/text/method/QwertyKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "QwertyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/QwertyKeyListener$Replaced;
    }
.end annotation


# static fields
.field private static PICKER_SETS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:[Landroid/text/method/QwertyKeyListener;


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/QwertyKeyListener;

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    .line 401
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 404
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string v2, "\u00a1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 405
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string v2, "\u00ab"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string v2, "\u00bb"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 407
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const-string v2, "\u00bf"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 408
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 409
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string v2, "\u00c7\u0106\u010c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const-string v2, "\u010e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const-string v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 412
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const-string v2, "\u0141"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const-string v2, "\u00cc\u00cd\u00ce\u00cf\u012a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 414
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const-string v2, "\u00d1\u0143\u0147"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 415
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    const-string v2, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 416
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string v2, "\u0158"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 417
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const-string v2, "\u015a\u0160"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 418
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x54

    const-string v2, "\u0164"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 419
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const-string v2, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 420
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const-string v2, "\u00dd\u0178"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 421
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string v2, "\u0179\u017b\u017d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 422
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const-string v2, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 423
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const-string v2, "\u00e7\u0107\u010d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 424
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string v2, "\u010f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 425
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 426
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string v2, "\u00ec\u00ed\u00ee\u00ef\u012b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string v2, "\u0142"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 428
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string v2, "\u00f1\u0144\u0148"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 429
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string v2, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-string v2, "\u0159"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 431
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-string v2, "\u00a7\u00df\u015b\u0161"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 432
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-string v2, "\u0165"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 433
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const-string v2, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 434
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const-string v2, "\u00fd\u00ff"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const-string v2, "\u017a\u017c\u017e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 436
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const v1, 0xef01

    const-string v2, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .registers 3
    .parameter "cap"
    .parameter "autotext"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 37
    iput-boolean p2, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    .line 38
    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;
    .registers 5
    .parameter "autotext"
    .parameter "cap"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-eqz p0, :cond_1f

    const/4 v2, 0x1

    :goto_9
    add-int v0, v1, v2

    .line 48
    .local v0, off:I
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_1a

    .line 49
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    new-instance v2, Landroid/text/method/QwertyKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 52
    :cond_1a
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    return-object v1

    .line 46
    .end local v0           #off:I
    :cond_1f
    const/4 v2, 0x0

    goto :goto_9
.end method

.method private getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .registers 15
    .parameter "src"
    .parameter "start"
    .parameter "end"
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 332
    sub-int v4, p3, p2

    .line 333
    .local v4, len:I
    const/4 v1, 0x0

    .line 335
    .local v1, changecase:Z
    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 337
    .local v6, replacement:Ljava/lang/String;
    if-nez v6, :cond_1e

    .line 338
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, key:Ljava/lang/String;
    sub-int v7, p3, p2

    invoke-static {v3, v8, v7, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 340
    const/4 v1, 0x1

    .line 342
    if-nez v6, :cond_1e

    move-object v7, v9

    .line 370
    .end local v3           #key:Ljava/lang/String;
    :goto_1d
    return-object v7

    .line 346
    :cond_1e
    const/4 v0, 0x0

    .line 348
    .local v0, caps:I
    if-eqz v1, :cond_33

    .line 349
    move v2, p2

    .local v2, j:I
    :goto_22
    if-ge v2, p3, :cond_33

    .line 350
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 351
    add-int/lit8 v0, v0, 0x1

    .line 349
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 357
    .end local v2           #j:I
    :cond_33
    if-nez v0, :cond_44

    .line 358
    move-object v5, v6

    .line 366
    .local v5, out:Ljava/lang/String;
    :goto_36
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v4, :cond_58

    invoke-static {p1, p2, v5, v8, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v7

    if-eqz v7, :cond_58

    move-object v7, v9

    .line 368
    goto :goto_1d

    .line 359
    .end local v5           #out:Ljava/lang/String;
    :cond_44
    const/4 v7, 0x1

    if-ne v0, v7, :cond_4c

    .line 360
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_36

    .line 361
    .end local v5           #out:Ljava/lang/String;
    :cond_4c
    if-ne v0, v4, :cond_53

    .line 362
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_36

    .line 364
    .end local v5           #out:Ljava/lang/String;
    :cond_53
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_36

    :cond_58
    move-object v7, v5

    .line 370
    goto :goto_1d
.end method

.method public static markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .registers 11
    .parameter "content"
    .parameter "start"
    .parameter "end"
    .parameter "original"

    .prologue
    const/4 v6, 0x0

    .line 388
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-interface {p0, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 389
    .local v3, repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    const/4 v0, 0x0

    .local v0, a:I
    :goto_e
    array-length v4, v3

    if-ge v0, v4, :cond_19

    .line 390
    aget-object v4, v3, v0

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 393
    :cond_19
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 394
    .local v1, len:I
    new-array v2, v1, [C

    .line 395
    .local v2, orig:[C
    invoke-virtual {p3, v6, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 397
    new-instance v4, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {v4, v2}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v5, 0x21

    invoke-interface {p0, v4, p1, p2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 399
    return-void
.end method

.method private showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .registers 13
    .parameter "view"
    .parameter "content"
    .parameter "c"
    .parameter "insert"
    .parameter "count"

    .prologue
    const/4 v6, 0x1

    .line 442
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 443
    .local v4, set:Ljava/lang/String;
    if-nez v4, :cond_d

    .line 444
    const/4 v0, 0x0

    .line 452
    :goto_c
    return v0

    .line 447
    :cond_d
    if-ne p5, v6, :cond_1e

    .line 448
    new-instance v0, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/text/method/CharacterPickerDialog;->show()V

    :cond_1e
    move v0, v6

    .line 452
    goto :goto_c
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "src"

    .prologue
    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInputType()I
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 49
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 62
    const/16 v34, 0x0

    .line 64
    .local v34, pref:I
    if-eqz p1, :cond_10

    .line 65
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v34

    .line 69
    :cond_10
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v17

    .line 70
    .local v17, a:I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v21

    .line 72
    .local v21, b:I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v39

    .line 73
    .local v39, selStart:I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 75
    .local v38, selEnd:I
    if-ltz v39, :cond_2c

    if-gez v38, :cond_39

    .line 76
    :cond_2c
    const/16 v38, 0x0

    move/from16 v39, v38

    .line 77
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 81
    :cond_39
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    .line 82
    .local v20, activeStart:I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v19

    .line 86
    .local v19, activeEnd:I
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v5

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v29

    .line 88
    .local v29, i:I
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    .line 89
    .local v10, count:I
    if-lez v10, :cond_8d

    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_8d

    if-lez v39, :cond_8d

    .line 90
    const/4 v5, 0x1

    sub-int v5, v39, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 92
    .local v8, c:C
    move v0, v8

    move/from16 v1, v29

    if-eq v0, v1, :cond_7b

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    if-ne v8, v5, :cond_8d

    if-eqz p1, :cond_8d

    .line 93
    :cond_7b
    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v10}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 94
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 95
    const/4 v5, 0x1

    .line 327
    .end local v8           #c:C
    :goto_8c
    return v5

    .line 100
    :cond_8d
    const v5, 0xef01

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_ab

    .line 101
    if-eqz p1, :cond_a6

    .line 102
    const v14, 0xef01

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v11 .. v16}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    .line 105
    :cond_a6
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 106
    const/4 v5, 0x1

    goto :goto_8c

    .line 109
    :cond_ab
    const v5, 0xef00

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_fd

    .line 112
    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_d7

    .line 113
    move/from16 v41, v38

    .line 116
    .local v41, start:I
    :goto_bb
    if-lez v41, :cond_d9

    sub-int v5, v38, v41

    const/4 v6, 0x4

    if-ge v5, v6, :cond_d9

    const/4 v5, 0x1

    sub-int v5, v41, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ltz v5, :cond_d9

    .line 117
    add-int/lit8 v41, v41, -0x1

    goto :goto_bb

    .line 120
    .end local v41           #start:I
    :cond_d7
    move/from16 v41, v39

    .line 123
    .restart local v41       #start:I
    :cond_d9
    const/16 v22, -0x1

    .line 125
    .local v22, ch:I
    :try_start_db
    move-object/from16 v0, p2

    move/from16 v1, v41

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v28

    .line 126
    .local v28, hex:Ljava/lang/String;
    const/16 v5, 0x10

    move-object/from16 v0, v28

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_ed
    .catch Ljava/lang/NumberFormatException; {:try_start_db .. :try_end_ed} :catch_450

    move-result v22

    .line 129
    .end local v28           #hex:Ljava/lang/String;
    :goto_ee
    if-ltz v22, :cond_2a6

    .line 130
    move/from16 v39, v41

    .line 131
    move-object/from16 v0, p2

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 132
    move/from16 v29, v22

    .line 138
    .end local v22           #ch:I
    .end local v41           #start:I
    :cond_fd
    :goto_fd
    if-eqz v29, :cond_384

    .line 139
    const/16 v25, 0x0

    .line 141
    .local v25, dead:Z
    const/high16 v5, -0x8000

    and-int v5, v5, v29

    if-eqz v5, :cond_10e

    .line 142
    const/16 v25, 0x1

    .line 143
    const v5, 0x7fffffff

    and-int v29, v29, v5

    .line 146
    :cond_10e
    move/from16 v0, v20

    move/from16 v1, v39

    if-ne v0, v1, :cond_14b

    move/from16 v0, v19

    move/from16 v1, v38

    if-ne v0, v1, :cond_14b

    .line 147
    const/16 v37, 0x0

    .line 149
    .local v37, replace:Z
    sub-int v5, v38, v39

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-nez v5, :cond_138

    .line 150
    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v18

    .line 151
    .local v18, accent:C
    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v23

    .line 153
    .local v23, composed:I
    if-eqz v23, :cond_138

    .line 154
    move/from16 v29, v23

    .line 155
    const/16 v37, 0x1

    .line 159
    .end local v18           #accent:C
    .end local v23           #composed:I
    :cond_138
    if-nez v37, :cond_14b

    .line 160
    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 161
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 162
    move/from16 v39, v38

    .line 166
    .end local v37           #replace:Z
    :cond_14b
    and-int/lit8 v5, v34, 0x1

    if-eqz v5, :cond_190

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v5

    if-eqz v5, :cond_190

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_190

    .line 169
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v42

    .line 170
    .local v42, where:I
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v27

    .line 172
    .local v27, flags:I
    move/from16 v0, v42

    move/from16 v1, v39

    if-ne v0, v1, :cond_2aa

    shr-int/lit8 v5, v27, 0x10

    const v6, 0xffff

    and-int/2addr v5, v6

    move v0, v5

    move/from16 v1, v29

    if-ne v0, v1, :cond_2aa

    .line 173
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 189
    .end local v27           #flags:I
    .end local v42           #where:I
    :cond_190
    :goto_190
    move/from16 v0, v39

    move/from16 v1, v38

    if-eq v0, v1, :cond_19d

    .line 190
    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 192
    :cond_19d
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/16 v6, 0x11

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v39

    move/from16 v3, v39

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 195
    move/from16 v0, v29

    int-to-char v0, v0

    move v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, v39

    move/from16 v2, v38

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 197
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v32

    .line 198
    .local v32, oldStart:I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v38

    .line 200
    move/from16 v0, v32

    move/from16 v1, v38

    if-ge v0, v1, :cond_1fa

    .line 201
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v32

    move/from16 v3, v38

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 205
    if-eqz v25, :cond_1fa

    .line 206
    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 207
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v32

    move/from16 v3, v38

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 212
    :cond_1fa
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 217
    and-int/lit8 v5, v34, 0x2

    if-eqz v5, :cond_30d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    move v5, v0

    if-eqz v5, :cond_30d

    const/16 v5, 0x20

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_248

    const/16 v5, 0x9

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_248

    const/16 v5, 0xa

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_248

    const/16 v5, 0x2c

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_248

    const/16 v5, 0x2e

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_248

    const/16 v5, 0x21

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_248

    const/16 v5, 0x3f

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_248

    const/16 v5, 0x22

    move/from16 v0, v29

    move v1, v5

    if-eq v0, v1, :cond_248

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->getType(I)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_30d

    :cond_248
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move v0, v5

    move/from16 v1, v32

    if-eq v0, v1, :cond_30d

    .line 225
    move/from16 v43, v32

    .local v43, x:I
    :goto_258
    if-lez v43, :cond_26e

    .line 226
    const/4 v5, 0x1

    sub-int v5, v43, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 227
    .restart local v8       #c:C
    const/16 v5, 0x27

    if-eq v8, v5, :cond_2d6

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_2d6

    .line 232
    .end local v8           #c:C
    :cond_26e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v43

    move/from16 v3, v32

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/method/QwertyKeyListener;->getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v35

    .line 234
    .local v35, rep:Ljava/lang/String;
    if-eqz v35, :cond_30d

    .line 235
    const/4 v5, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v6

    const-class v7, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 237
    .local v36, repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    const/16 v17, 0x0

    :goto_292
    move-object/from16 v0, v36

    array-length v0, v0

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_2d9

    .line 238
    aget-object v5, v36, v17

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 237
    add-int/lit8 v17, v17, 0x1

    goto :goto_292

    .line 134
    .end local v25           #dead:Z
    .end local v32           #oldStart:I
    .end local v35           #rep:Ljava/lang/String;
    .end local v36           #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v43           #x:I
    .restart local v22       #ch:I
    .restart local v41       #start:I
    :cond_2a6
    const/16 v29, 0x0

    goto/16 :goto_fd

    .line 175
    .end local v22           #ch:I
    .end local v41           #start:I
    .restart local v25       #dead:Z
    .restart local v27       #flags:I
    .restart local v42       #where:I
    :cond_2aa
    shl-int/lit8 v27, v29, 0x10

    .line 176
    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v29

    .line 178
    if-nez v39, :cond_2c3

    .line 179
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    or-int/lit8 v8, v27, 0x11

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_190

    .line 182
    :cond_2c3
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    const/4 v6, 0x1

    sub-int v6, v39, v6

    or-int/lit8 v7, v27, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move/from16 v3, v39

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_190

    .line 225
    .end local v27           #flags:I
    .end local v42           #where:I
    .restart local v8       #c:C
    .restart local v32       #oldStart:I
    .restart local v43       #x:I
    :cond_2d6
    add-int/lit8 v43, v43, -0x1

    goto :goto_258

    .line 240
    .end local v8           #c:C
    .restart local v35       #rep:Ljava/lang/String;
    .restart local v36       #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    :cond_2d9
    sub-int v5, v32, v43

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v33, v0

    .line 241
    .local v33, orig:[C
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v43

    move/from16 v2, v32

    move-object/from16 v3, v33

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 243
    new-instance v5, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v43

    move/from16 v3, v32

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 245
    move-object/from16 v0, p2

    move/from16 v1, v43

    move/from16 v2, v32

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 251
    .end local v33           #orig:[C
    .end local v35           #rep:Ljava/lang/String;
    .end local v36           #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v43           #x:I
    :cond_30d
    and-int/lit8 v5, v34, 0x4

    if-eqz v5, :cond_381

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    move v5, v0

    if-eqz v5, :cond_381

    .line 252
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v38

    .line 253
    const/4 v5, 0x3

    sub-int v5, v38, v5

    if-ltz v5, :cond_381

    .line 254
    const/4 v5, 0x1

    sub-int v5, v38, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_381

    const/4 v5, 0x2

    sub-int v5, v38, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_381

    .line 256
    const/4 v5, 0x3

    sub-int v5, v38, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 258
    .restart local v8       #c:C
    const/4 v5, 0x3

    sub-int v30, v38, v5

    .local v30, j:I
    :goto_34a
    if-lez v30, :cond_365

    .line 259
    const/16 v5, 0x22

    if-eq v8, v5, :cond_358

    invoke-static {v8}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_365

    .line 261
    :cond_358
    const/4 v5, 0x1

    sub-int v5, v30, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 258
    add-int/lit8 v30, v30, -0x1

    goto :goto_34a

    .line 267
    :cond_365
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_371

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_381

    .line 268
    :cond_371
    const/4 v5, 0x2

    sub-int v5, v38, v5

    const/4 v6, 0x1

    sub-int v6, v38, v6

    const-string v7, "."

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 274
    .end local v8           #c:C
    .end local v30           #j:I
    :cond_381
    const/4 v5, 0x1

    goto/16 :goto_8c

    .line 275
    .end local v25           #dead:Z
    .end local v32           #oldStart:I
    :cond_384
    const/16 v5, 0x43

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_44a

    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_44a

    .line 278
    const/16 v24, 0x1

    .line 285
    .local v24, consider:I
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move v0, v5

    move/from16 v1, v39

    if-ne v0, v1, :cond_3b1

    .line 286
    const/4 v5, 0x1

    sub-int v5, v39, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3b1

    .line 287
    const/16 v24, 0x2

    .line 290
    :cond_3b1
    sub-int v5, v39, v24

    const-class v6, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, p2

    move v1, v5

    move/from16 v2, v39

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 293
    .restart local v36       #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    move-object/from16 v0, v36

    array-length v0, v0

    move v5, v0

    if-lez v5, :cond_44a

    .line 294
    const/4 v5, 0x0

    aget-object v5, v36, v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v40

    .line 295
    .local v40, st:I
    const/4 v5, 0x0

    aget-object v5, v36, v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v26

    .line 296
    .local v26, en:I
    new-instance v31, Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v36, v5

    invoke-static {v5}, Landroid/text/method/QwertyKeyListener$Replaced;->access$000(Landroid/text/method/QwertyKeyListener$Replaced;)[C

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 298
    .local v31, old:Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v36, v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 304
    move/from16 v0, v39

    move/from16 v1, v26

    if-lt v0, v1, :cond_441

    .line 305
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    const/16 v6, 0x22

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v26

    move/from16 v3, v26

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 307
    move-object/from16 v0, p2

    move/from16 v1, v40

    move/from16 v2, v26

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 309
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v26

    .line 310
    const/4 v5, 0x1

    sub-int v5, v26, v5

    if-ltz v5, :cond_438

    .line 311
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    const/4 v6, 0x1

    sub-int v6, v26, v6

    const/16 v7, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move/from16 v3, v26

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 317
    :goto_432
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 323
    const/4 v5, 0x1

    goto/16 :goto_8c

    .line 315
    :cond_438
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_432

    .line 319
    :cond_441
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 320
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_8c

    .line 327
    .end local v24           #consider:I
    .end local v26           #en:I
    .end local v31           #old:Ljava/lang/String;
    .end local v36           #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v40           #st:I
    :cond_44a
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_8c

    .line 127
    .restart local v22       #ch:I
    .restart local v41       #start:I
    :catch_450
    move-exception v5

    goto/16 :goto_ee
.end method
