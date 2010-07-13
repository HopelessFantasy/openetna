.class public Lcom/android/launcher/FolderIcon;
.super Lcom/android/launcher/BubbleTextView;
.source "FolderIcon.java"

# interfaces
.implements Lcom/android/launcher/DropTarget;


# instance fields
.field private mCloseIcon:Landroid/graphics/drawable/Drawable;

.field private mInfo:Lcom/android/launcher/UserFolderInfo;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mOpenIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/launcher/BubbleTextView;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method static fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher/UserFolderInfo;)Lcom/android/launcher/FolderIcon;
    .registers 10
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/FolderIcon;

    .line 49
    .local v1, icon:Lcom/android/launcher/FolderIcon;
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 50
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x7f020013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, p1}, Lcom/android/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 52
    iput-object v0, v1, Lcom/android/launcher/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    .line 53
    const v3, 0x7f020015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher/FolderIcon;->mOpenIcon:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {v1, v5, v0, v5, v5}, Lcom/android/launcher/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object v3, p3, Lcom/android/launcher/UserFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/launcher/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v1, p3}, Lcom/android/launcher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v1, p1}, Lcom/android/launcher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object p3, v1, Lcom/android/launcher/FolderIcon;->mInfo:Lcom/android/launcher/UserFolderInfo;

    .line 59
    iput-object p1, v1, Lcom/android/launcher/FolderIcon;->mLauncher:Lcom/android/launcher/Launcher;

    .line 61
    return-object v1
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)Z
    .registers 15
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v7, 0x1

    .line 66
    move-object v0, p6

    check-cast v0, Lcom/android/launcher/ItemInfo;

    move-object v1, v0

    .line 67
    .local v1, item:Lcom/android/launcher/ItemInfo;
    iget v2, v1, Lcom/android/launcher/ItemInfo;->itemType:I

    .line 68
    .local v2, itemType:I
    if-eqz v2, :cond_b

    if-ne v2, v7, :cond_17

    :cond_b
    iget-wide v3, v1, Lcom/android/launcher/ItemInfo;->container:J

    iget-object v5, p0, Lcom/android/launcher/FolderIcon;->mInfo:Lcom/android/launcher/UserFolderInfo;

    iget-wide v5, v5, Lcom/android/launcher/UserFolderInfo;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_17

    move v3, v7

    :goto_16
    return v3

    :cond_17
    const/4 v3, 0x0

    goto :goto_16
.end method

.method public estimateDropLocation(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"
    .parameter "recycle"

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDragEnter(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/android/launcher/FolderIcon;->mOpenIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/android/launcher/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 87
    return-void
.end method

.method public onDragExit(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/launcher/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/android/launcher/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 96
    return-void
.end method

.method public onDragOver(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 91
    return-void
.end method

.method public onDrop(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 15
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v5, 0x0

    .line 78
    move-object v0, p6

    check-cast v0, Lcom/android/launcher/ApplicationInfo;

    move-object v2, v0

    .line 80
    .local v2, item:Lcom/android/launcher/ApplicationInfo;
    iget-object v1, p0, Lcom/android/launcher/FolderIcon;->mInfo:Lcom/android/launcher/UserFolderInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher/UserFolderInfo;->add(Lcom/android/launcher/ApplicationInfo;)V

    .line 81
    iget-object v1, p0, Lcom/android/launcher/FolderIcon;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v3, p0, Lcom/android/launcher/FolderIcon;->mInfo:Lcom/android/launcher/UserFolderInfo;

    iget-wide v3, v3, Lcom/android/launcher/UserFolderInfo;->id:J

    move v6, v5

    move v7, v5

    invoke-static/range {v1 .. v7}, Lcom/android/launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;JIII)V

    .line 82
    return-void
.end method
