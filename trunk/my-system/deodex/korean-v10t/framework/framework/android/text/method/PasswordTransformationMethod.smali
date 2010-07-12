.class public Landroid/text/method/PasswordTransformationMethod;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/PasswordTransformationMethod$ViewReference;,
        Landroid/text/method/PasswordTransformationMethod$Visible;,
        Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
    }
.end annotation


# static fields
.field private static DOT:C

.field private static DOT_L2R:C

.field private static DOT_R2L:C

.field private static sInstance:Landroid/text/method/PasswordTransformationMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/16 v0, 0x2022

    .line 316
    sput-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    .line 319
    sput-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT_L2R:C

    .line 320
    const/16 v0, 0x66d

    sput-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT_R2L:C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    return-void
.end method

.method static synthetic access$100()C
    .registers 1

    .prologue
    .line 41
    sget-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT_R2L:C

    return v0
.end method

.method static synthetic access$200()C
    .registers 1

    .prologue
    .line 41
    sget-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT_L2R:C

    return v0
.end method

.method public static getInstance()Landroid/text/method/PasswordTransformationMethod;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_7

    .line 69
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    .line 72
    :goto_6
    return-object v0

    .line 71
    :cond_7
    new-instance v0, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    sput-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    .line 72
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    goto :goto_6
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 125
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 78
    return-void
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 10
    .parameter "source"
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 45
    instance-of v4, p1, Landroid/text/Spannable;

    if-eqz v4, :cond_2b

    .line 46
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v2, v0

    .line 54
    .local v2, sp:Landroid/text/Spannable;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    invoke-interface {v2, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 56
    .local v3, vr:[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    array-length v4, v3

    if-ge v1, v4, :cond_21

    .line 57
    aget-object v4, v3, v1

    invoke-interface {v2, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 60
    :cond_21
    new-instance v4, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    invoke-direct {v4, p2}, Landroid/text/method/PasswordTransformationMethod$ViewReference;-><init>(Landroid/view/View;)V

    const/16 v5, 0x22

    invoke-interface {v2, v4, v6, v6, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 64
    .end local v1           #i:I
    .end local v2           #sp:Landroid/text/Spannable;
    .end local v3           #vr:[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    :cond_2b
    new-instance v4, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;

    invoke-direct {v4, p1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;-><init>(Ljava/lang/CharSequence;)V

    return-object v4
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 13
    .parameter "view"
    .parameter "sourceText"
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 130
    if-nez p3, :cond_23

    .line 131
    instance-of v4, p2, Landroid/text/Spannable;

    if-eqz v4, :cond_23

    .line 132
    move-object v0, p2

    check-cast v0, Landroid/text/Spannable;

    move-object v3, v0

    .line 134
    .local v3, sp:Landroid/text/Spannable;
    const/4 v4, 0x0

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 135
    .local v2, old:[Landroid/text/method/PasswordTransformationMethod$Visible;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    array-length v4, v2

    if-ge v1, v4, :cond_23

    .line 136
    aget-object v4, v2, v1

    invoke-interface {v3, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 140
    .end local v1           #i:I
    .end local v2           #old:[Landroid/text/method/PasswordTransformationMethod$Visible;
    .end local v3           #sp:Landroid/text/Spannable;
    :cond_23
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 15
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v9, 0x0

    .line 82
    instance-of v7, p1, Landroid/text/Spannable;

    if-eqz v7, :cond_18

    .line 83
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v4, v0

    .line 84
    .local v4, sp:Landroid/text/Spannable;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    invoke-interface {v4, v9, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 86
    .local v6, vr:[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    array-length v7, v6

    if-nez v7, :cond_19

    .line 121
    .end local v4           #sp:Landroid/text/Spannable;
    .end local v6           #vr:[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    :cond_18
    :goto_18
    return-void

    .line 97
    .restart local v4       #sp:Landroid/text/Spannable;
    .restart local v6       #vr:[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    :cond_19
    const/4 v5, 0x0

    .line 98
    .local v5, v:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    if-nez v5, :cond_2b

    array-length v7, v6

    if-ge v1, v7, :cond_2b

    .line 99
    aget-object v7, v6, v1

    invoke-virtual {v7}, Landroid/text/method/PasswordTransformationMethod$ViewReference;->get()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #v:Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .line 98
    .restart local v5       #v:Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 102
    :cond_2b
    if-eqz v5, :cond_18

    .line 106
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v3

    .line 107
    .local v3, pref:I
    and-int/lit8 v7, v3, 0x8

    if-eqz v7, :cond_18

    .line 108
    if-lez p4, :cond_18

    .line 109
    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v8, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-interface {v4, v9, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 110
    .local v2, old:[Landroid/text/method/PasswordTransformationMethod$Visible;
    const/4 v1, 0x0

    :goto_4c
    array-length v7, v2

    if-ge v1, v7, :cond_57

    .line 111
    aget-object v7, v2, v1

    invoke-interface {v4, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 114
    :cond_57
    const/4 v7, 0x1

    if-ne p4, v7, :cond_18

    .line 115
    new-instance v7, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-direct {v7, v4, p0}, Landroid/text/method/PasswordTransformationMethod$Visible;-><init>(Landroid/text/Spannable;Landroid/text/method/PasswordTransformationMethod;)V

    add-int v8, p2, p4

    const/16 v9, 0x21

    invoke-interface {v4, v7, p2, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_18
.end method
