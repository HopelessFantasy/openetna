.class public final Lcom/android/internal/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field static final NO_ICON:I

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mItemCallback:Ljava/lang/Runnable;

.field private mItemViews:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/view/menu/MenuView$ItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;)V
    .registers 9
    .parameter "menu"
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "ordering"
    .parameter "title"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 67
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 106
    sget-object v0, Lcom/android/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    if-nez v0, :cond_52

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    .line 118
    :cond_52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    .line 119
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 120
    iput p3, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mId:I

    .line 121
    iput p2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 122
    iput p4, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 123
    iput p5, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mOrdering:I

    .line 124
    iput-object p6, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 125
    return-void
.end method

.method private createItemView(ILandroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView$ItemView;
    .registers 7
    .parameter "menuType"
    .parameter "parent"

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getLayoutInflater(I)Landroid/view/LayoutInflater;

    move-result-object v1

    sget-object v2, Lcom/android/internal/view/menu/MenuBuilder;->ITEM_LAYOUT_RES_FOR_TYPE:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 586
    .local v0, itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 587
    return-object v0
.end method

.method private hasItemView(I)Z
    .registers 3
    .parameter "menuType"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private haveAnyOpenedIconCapableItemViews()Z
    .registers 3

    .prologue
    .line 470
    const/4 v0, 0x2

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1e

    .line 471
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView$ItemView;->showsIcon()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 472
    const/4 v1, 0x1

    .line 476
    :goto_1a
    return v1

    .line 470
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 476
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method private refreshShortcutOnItemViews()V
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->refreshShortcutOnItemViews(ZZ)V

    .line 313
    return-void
.end method

.method private setIconOnViews(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "icon"

    .prologue
    .line 461
    const/4 v0, 0x2

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_29

    .line 463
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView$ItemView;->showsIcon()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 464
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 461
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 467
    :cond_29
    return-void
.end method


# virtual methods
.method clearItemViews()V
    .registers 4

    .prologue
    .line 591
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_6
    if-ltz v0, :cond_10

    .line 592
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 591
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 594
    :cond_10
    return-void
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .prologue
    .line 219
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 184
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 428
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 435
    :goto_6
    return-object v0

    .line 431
    :cond_7
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    if-eqz v0, :cond_18

    .line 432
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6

    .line 435
    :cond_18
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 189
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mId:I

    return v0
.end method

.method getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "menuType"
    .parameter "parent"

    .prologue
    .line 568
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 569
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->createItemView(ILandroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView$ItemView;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v1, v0, p1

    .line 572
    :cond_13
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public getLayoutInflater(I)Landroid/view/LayoutInflater;
    .registers 3
    .parameter "menuType"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuType(I)Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .prologue
    .line 233
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_a
    return v0

    :cond_b
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    goto :goto_a
.end method

.method getShortcutLabel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    .line 270
    .local v1, shortcut:C
    if-nez v1, :cond_9

    .line 271
    const-string v2, ""

    .line 294
    :goto_8
    return-object v2

    .line 274
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, sb:Ljava/lang/StringBuilder;
    sparse-switch v1, :sswitch_data_2e

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    :goto_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 278
    :sswitch_1b
    sget-object v2, Lcom/android/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 282
    :sswitch_21
    sget-object v2, Lcom/android/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 286
    :sswitch_27
    sget-object v2, Lcom/android/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 275
    nop

    :sswitch_data_2e
    .sparse-switch
        0x8 -> :sswitch_21
        0xa -> :sswitch_1b
        0x20 -> :sswitch_27
    .end sparse-switch
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_6
.end method

.method getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "itemView"

    .prologue
    .line 371
    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c
.end method

.method public hasSubMenu()Z
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public invoke()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 133
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v3

    .line 154
    :goto_e
    return v1

    .line 138
    :cond_f
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    .line 139
    .local v0, callback:Lcom/android/internal/view/menu/MenuBuilder$Callback;
    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_25

    move v1, v3

    .line 141
    goto :goto_e

    .line 144
    :cond_25
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_30

    .line 145
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    move v1, v3

    .line 146
    goto :goto_e

    .line 149
    :cond_30
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_41

    .line 150
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v1, v3

    .line 151
    goto :goto_e

    .line 154
    :cond_41
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public isCheckable()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 480
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isChecked()Z
    .registers 3

    .prologue
    .line 507
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isExclusiveCheckable()Z
    .registers 2

    .prologue
    .line 503
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 535
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method refreshShortcutOnItemViews(ZZ)V
    .registers 7
    .parameter "menuShortcutShown"
    .parameter "isQwertyMode"

    .prologue
    .line 327
    if-eqz p2, :cond_24

    iget-char v3, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    move v1, v3

    .line 330
    .local v1, shortcutKey:C
    :goto_5
    if-eqz p1, :cond_28

    if-eqz v1, :cond_28

    const/4 v3, 0x1

    move v2, v3

    .line 332
    .local v2, showShortcut:Z
    :goto_b
    const/4 v0, 0x2

    .local v0, i:I
    :goto_c
    if-ltz v0, :cond_2b

    .line 333
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 334
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v3, v2, v1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setShortcut(ZC)V

    .line 332
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 327
    .end local v0           #i:I
    .end local v1           #shortcutKey:C
    .end local v2           #showShortcut:Z
    :cond_24
    iget-char v3, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    move v1, v3

    goto :goto_5

    .line 330
    .restart local v1       #shortcutKey:C
    :cond_28
    const/4 v3, 0x0

    move v2, v3

    goto :goto_b

    .line 337
    .restart local v0       #i:I
    .restart local v2       #showShortcut:Z
    :cond_2b
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3
    .parameter "alphaChar"

    .prologue
    .line 223
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_5

    .line 229
    :goto_4
    return-object p0

    .line 225
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 227
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->refreshShortcutOnItemViews()V

    goto :goto_4
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .registers 2
    .parameter "callback"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 215
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 6
    .parameter "checkable"

    .prologue
    .line 484
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 485
    .local v1, oldFlags:I
    iget v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, -0x2

    if-eqz p1, :cond_29

    const/4 v3, 0x1

    :goto_9
    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 486
    iget v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v1, v2, :cond_2b

    .line 487
    const/4 v0, 0x2

    .local v0, i:I
    :goto_11
    if-ltz v0, :cond_2b

    .line 488
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 489
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v2, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setCheckable(Z)V

    .line 487
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 485
    .end local v0           #i:I
    :cond_29
    const/4 v3, 0x0

    goto :goto_9

    .line 494
    :cond_2b
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3
    .parameter "checked"

    .prologue
    .line 511
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    .line 514
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 519
    :goto_b
    return-object p0

    .line 516
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_b
.end method

.method setCheckedInt(Z)V
    .registers 6
    .parameter "checked"

    .prologue
    .line 523
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 524
    .local v1, oldFlags:I
    iget v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    if-eqz p1, :cond_29

    const/4 v3, 0x2

    :goto_9
    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 525
    iget v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v1, v2, :cond_2b

    .line 526
    const/4 v0, 0x2

    .local v0, i:I
    :goto_11
    if-ltz v0, :cond_2b

    .line 527
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 528
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v2, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setChecked(Z)V

    .line 526
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 524
    .end local v0           #i:I
    :cond_29
    const/4 v3, 0x0

    goto :goto_9

    .line 532
    :cond_2b
    return-void
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 4
    .parameter "enabled"

    .prologue
    .line 166
    if-eqz p1, :cond_21

    .line 167
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 172
    :goto_8
    const/4 v0, 0x2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_28

    .line 175
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 176
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setEnabled(Z)V

    .line 172
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 169
    .end local v0           #i:I
    :cond_21
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_8

    .line 180
    .restart local v0       #i:I
    :cond_28
    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .registers 4
    .parameter "exclusive"

    .prologue
    .line 499
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_b

    const/4 v1, 0x4

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 500
    return-void

    .line 499
    :cond_b
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 5
    .parameter "iconResId"

    .prologue
    const/4 v2, 0x0

    .line 447
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 448
    iput p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 451
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->haveAnyOpenedIconCapableItemViews()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 452
    if-eqz p1, :cond_1c

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 454
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_18
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIconOnViews(Landroid/graphics/drawable/Drawable;)V

    .line 457
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1b
    return-object p0

    :cond_1c
    move-object v0, v2

    .line 452
    goto :goto_18
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3
    .parameter "icon"

    .prologue
    .line 439
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 440
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 441
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setIconOnViews(Landroid/graphics/drawable/Drawable;)V

    .line 443
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2
    .parameter "intent"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 206
    return-object p0
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2
    .parameter "menuInfo"

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 603
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 3
    .parameter "numericChar"

    .prologue
    .line 237
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_5

    .line 243
    :goto_4
    return-object p0

    .line 239
    :cond_5
    iput-char p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 241
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->refreshShortcutOnItemViews()V

    goto :goto_4
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2
    .parameter "clickListener"

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 564
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 4
    .parameter "numericChar"
    .parameter "alphaChar"

    .prologue
    .line 247
    iput-char p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 248
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 250
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->refreshShortcutOnItemViews()V

    .line 252
    return-object p0
.end method

.method setSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .registers 4
    .parameter "subMenu"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    instance-of v0, v0, Landroid/view/SubMenu;

    if-eqz v0, :cond_12

    .line 349
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to add a sub-menu to a sub-menu."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_12
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 356
    return-void
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "title"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 5
    .parameter "title"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 379
    const/4 v0, 0x2

    .local v0, i:I
    :goto_3
    if-ltz v0, :cond_26

    .line 382
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 379
    :cond_b
    :goto_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 386
    :cond_e
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 387
    .local v1, itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-nez v2, :cond_b

    .line 388
    :cond_22
    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 392
    .end local v1           #itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    :cond_26
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    if-eqz v2, :cond_2f

    .line 393
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v2, p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 396
    :cond_2f
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4
    .parameter "title"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 411
    if-nez p1, :cond_6

    .line 412
    iget-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 415
    :cond_6
    const/4 v0, 0x2

    .local v0, i:I
    :goto_7
    if-ltz v0, :cond_2f

    .line 417
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 418
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 415
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 422
    :cond_2f
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 3
    .parameter "shown"

    .prologue
    .line 557
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V

    .line 559
    :cond_b
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .registers 6
    .parameter "shown"

    .prologue
    const/4 v3, 0x0

    .line 548
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 549
    .local v0, oldFlags:I
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, -0x9

    if-eqz p1, :cond_13

    move v2, v3

    :goto_a
    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 550
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_16

    const/4 v1, 0x1

    :goto_12
    return v1

    .line 549
    :cond_13
    const/16 v2, 0x8

    goto :goto_a

    :cond_16
    move v1, v3

    .line 550
    goto :goto_12
.end method

.method public shouldShowIcon(I)Z
    .registers 3
    .parameter "menuType"

    .prologue
    .line 623
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method shouldShowShortcut()Z
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
