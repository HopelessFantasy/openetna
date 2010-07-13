.class public Lcom/android/launcher/AddAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/AddAdapter$ListItem;
    }
.end annotation


# static fields
.field public static final ITEM_APPWIDGET:I = 0x1

.field public static final ITEM_LIVE_FOLDER:I = 0x2

.field public static final ITEM_SHORTCUT:I = 0x0

.field public static final ITEM_WALLPAPER:I = 0x3


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 9
    .parameter "launcher"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    .line 66
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 71
    .local v2, res:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher/AddAdapter$ListItem;

    const v3, 0x7f0a000d

    const v4, 0x7f020018

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/AddAdapter$ListItem;-><init>(Lcom/android/launcher/AddAdapter;Landroid/content/res/Resources;III)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v6, p0, Lcom/android/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher/AddAdapter$ListItem;

    const v3, 0x7f0a0011

    const v4, 0x7f020012

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/AddAdapter$ListItem;-><init>(Lcom/android/launcher/AddAdapter;Landroid/content/res/Resources;III)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v6, p0, Lcom/android/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher/AddAdapter$ListItem;

    const v3, 0x7f0a0010

    const v4, 0x7f020014

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/AddAdapter$ListItem;-><init>(Lcom/android/launcher/AddAdapter;Landroid/content/res/Resources;III)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v6, p0, Lcom/android/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher/AddAdapter$ListItem;

    const v3, 0x7f0a0012

    const v4, 0x7f020016

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/AddAdapter$ListItem;-><init>(Lcom/android/launcher/AddAdapter;Landroid/content/res/Resources;III)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 109
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/launcher/AddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/AddAdapter$ListItem;

    .line 88
    .local v1, item:Lcom/android/launcher/AddAdapter$ListItem;
    if-nez p2, :cond_12

    .line 89
    iget-object v3, p0, Lcom/android/launcher/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v4, 0x7f03

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 92
    :cond_12
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 93
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object v3, v1, Lcom/android/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v3, v1, Lcom/android/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 97
    return-object p2
.end method
