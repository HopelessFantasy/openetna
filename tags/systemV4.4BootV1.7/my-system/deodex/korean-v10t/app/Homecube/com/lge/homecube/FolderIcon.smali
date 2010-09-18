.class public Lcom/lge/homecube/FolderIcon;
.super Lcom/lge/homecube/BubbleTextView;
.source "FolderIcon.java"

# interfaces
.implements Lcom/lge/homecube/DropTarget;


# instance fields
.field private mCloseIcon:Landroid/graphics/drawable/Drawable;

.field private mInfo:Lcom/lge/homecube/UserFolderInfo;

.field private mLauncher:Lcom/lge/homecube/Launcher;

.field private mOpenIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/lge/homecube/BubbleTextView;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/lge/homecube/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method static fromXml(ILcom/lge/homecube/Launcher;Landroid/view/ViewGroup;Lcom/lge/homecube/UserFolderInfo;)Lcom/lge/homecube/FolderIcon;
    .registers 10
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"

    .prologue
    const/4 v5, 0x0

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/homecube/FolderIcon;

    .line 48
    .local v1, icon:Lcom/lge/homecube/FolderIcon;
    invoke-virtual {p1}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 49
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x7f02002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, p1}, Lcom/lge/homecube/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    iput-object v0, v1, Lcom/lge/homecube/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    .line 52
    const v3, 0x7f020031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/lge/homecube/FolderIcon;->mOpenIcon:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {v1, v5, v0, v5, v5}, Lcom/lge/homecube/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v3, p3, Lcom/lge/homecube/UserFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/lge/homecube/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v1, p3}, Lcom/lge/homecube/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v1, p1}, Lcom/lge/homecube/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object p3, v1, Lcom/lge/homecube/FolderIcon;->mInfo:Lcom/lge/homecube/UserFolderInfo;

    .line 58
    iput-object p1, v1, Lcom/lge/homecube/FolderIcon;->mLauncher:Lcom/lge/homecube/Launcher;

    .line 60
    return-object v1
.end method


# virtual methods
.method public acceptDrop(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)Z
    .registers 15
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v7, 0x1

    .line 65
    move-object v0, p6

    check-cast v0, Lcom/lge/homecube/ItemInfo;

    move-object v1, v0

    .line 66
    .local v1, item:Lcom/lge/homecube/ItemInfo;
    iget v2, v1, Lcom/lge/homecube/ItemInfo;->itemType:I

    .line 67
    .local v2, itemType:I
    if-eqz v2, :cond_b

    if-ne v2, v7, :cond_17

    :cond_b
    iget-wide v3, v1, Lcom/lge/homecube/ItemInfo;->container:J

    iget-object v5, p0, Lcom/lge/homecube/FolderIcon;->mInfo:Lcom/lge/homecube/UserFolderInfo;

    iget-wide v5, v5, Lcom/lge/homecube/UserFolderInfo;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_17

    move v3, v7

    :goto_16
    return v3

    :cond_17
    const/4 v3, 0x0

    goto :goto_16
.end method

.method public onDragEnter(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/lge/homecube/FolderIcon;->mOpenIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/lge/homecube/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method

.method public onDragExit(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/lge/homecube/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/lge/homecube/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-void
.end method

.method public onDragOver(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 86
    return-void
.end method

.method public onDrop(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 15
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v5, 0x0

    .line 73
    move-object v0, p6

    check-cast v0, Lcom/lge/homecube/ApplicationInfo;

    move-object v2, v0

    .line 75
    .local v2, item:Lcom/lge/homecube/ApplicationInfo;
    iget-object v1, p0, Lcom/lge/homecube/FolderIcon;->mInfo:Lcom/lge/homecube/UserFolderInfo;

    invoke-virtual {v1, v2}, Lcom/lge/homecube/UserFolderInfo;->add(Lcom/lge/homecube/ApplicationInfo;)V

    .line 76
    iget-object v1, p0, Lcom/lge/homecube/FolderIcon;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v3, p0, Lcom/lge/homecube/FolderIcon;->mInfo:Lcom/lge/homecube/UserFolderInfo;

    iget-wide v3, v3, Lcom/lge/homecube/UserFolderInfo;->id:J

    move v6, v5

    move v7, v5

    invoke-static/range {v1 .. v7}, Lcom/lge/homecube/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;JIII)V

    .line 77
    return-void
.end method
