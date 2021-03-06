.class public Lcom/android/launcher/LiveFolderIcon;
.super Lcom/android/launcher/FolderIcon;
.source "LiveFolderIcon.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/launcher/FolderIcon;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/FolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method static fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher/LiveFolderInfo;)Lcom/android/launcher/LiveFolderIcon;
    .registers 10
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/LiveFolderIcon;

    .line 41
    .local v1, icon:Lcom/android/launcher/LiveFolderIcon;
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 42
    .local v2, resources:Landroid/content/res/Resources;
    iget-object v0, p3, Lcom/android/launcher/LiveFolderInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 43
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_22

    .line 44
    const v3, 0x7f020013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 46
    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/android/launcher/LiveFolderInfo;->filtered:Z

    .line 48
    :cond_22
    invoke-virtual {v1, v5, v0, v5, v5}, Lcom/android/launcher/LiveFolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v3, p3, Lcom/android/launcher/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/launcher/LiveFolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v1, p3}, Lcom/android/launcher/LiveFolderIcon;->setTag(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v1, p1}, Lcom/android/launcher/LiveFolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-object v1
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)Z
    .registers 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public onDragEnter(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 67
    return-void
.end method

.method public onDragExit(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 75
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
    .line 71
    return-void
.end method

.method public onDrop(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 63
    return-void
.end method
