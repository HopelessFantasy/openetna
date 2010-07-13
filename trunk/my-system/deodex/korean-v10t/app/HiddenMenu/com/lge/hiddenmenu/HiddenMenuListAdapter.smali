.class public Lcom/lge/hiddenmenu/HiddenMenuListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HiddenMenuListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .registers 5
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 35
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter "context"
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 32
    return-void
.end method

.method public static createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;
    .registers 5
    .parameter "context"
    .parameter "textArrayResId"
    .parameter "textViewResId"

    .prologue
    .line 84
    sput-object p0, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 87
    .local v0, strings:[Ljava/lang/CharSequence;
    new-instance v1, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-direct {v1, p0, p2, v0}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private isSyncMLEnabled()Z
    .registers 5

    .prologue
    .line 108
    const/4 v0, 0x1

    .line 109
    .local v0, bRet:Z
    sget-object v2, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SYNCML_ENABLE_MENU_I"

    invoke-static {v2, v3}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, enableMenu:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 112
    const/4 v2, 0x0

    .line 120
    :goto_14
    return v2

    .line 115
    :cond_15
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 116
    const/4 v0, 0x1

    :goto_1e
    move v2, v0

    .line 120
    goto :goto_14

    .line 118
    :cond_20
    const/4 v0, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public getNewSelectionForkey(IILandroid/view/KeyEvent;)I
    .registers 13
    .parameter "currentSelection"
    .parameter "key"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, -0x8000

    .line 48
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyboardDevice()I

    move-result v6

    invoke-static {v6}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v4

    .line 49
    .local v4, kmap:Landroid/view/KeyCharacterMap;
    invoke-virtual {v4, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 51
    .local v0, c:C
    if-nez v0, :cond_17

    move v6, v7

    .line 76
    :goto_16
    return v6

    .line 55
    :cond_17
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getCount()I

    move-result v5

    .line 57
    .local v5, len:I
    add-int/lit8 v1, p1, 0x1

    .local v1, i:I
    :goto_1d
    if-ge v1, v5, :cond_34

    .line 58
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 60
    .local v2, item:Ljava/lang/CharSequence;
    invoke-interface {v2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 62
    .local v3, item_char:C
    if-ne v0, v3, :cond_31

    move v6, v1

    .line 63
    goto :goto_16

    .line 57
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 66
    .end local v2           #item:Ljava/lang/CharSequence;
    .end local v3           #item_char:C
    :cond_34
    const/4 v1, 0x0

    :goto_35
    if-ge v1, p1, :cond_4c

    .line 67
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 69
    .restart local v2       #item:Ljava/lang/CharSequence;
    invoke-interface {v2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 71
    .restart local v3       #item_char:C
    if-ne v0, v3, :cond_49

    move v6, v1

    .line 72
    goto :goto_16

    .line 66
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .end local v2           #item:Ljava/lang/CharSequence;
    .end local v3           #item_char:C
    :cond_4c
    move v6, v7

    .line 76
    goto :goto_16
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method
