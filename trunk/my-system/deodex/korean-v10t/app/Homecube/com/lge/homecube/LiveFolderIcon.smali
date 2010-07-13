.class public Lcom/lge/homecube/LiveFolderIcon;
.super Lcom/lge/homecube/FolderIcon;
.source "LiveFolderIcon.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lge/homecube/FolderIcon;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/lge/homecube/FolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method static fromXml(ILcom/lge/homecube/Launcher;Landroid/view/ViewGroup;Lcom/lge/homecube/LiveFolderInfo;)Lcom/lge/homecube/LiveFolderIcon;
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

    check-cast v1, Lcom/lge/homecube/LiveFolderIcon;

    .line 41
    .local v1, icon:Lcom/lge/homecube/LiveFolderIcon;
    invoke-virtual {p1}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 42
    .local v2, resources:Landroid/content/res/Resources;
    iget-object v0, p3, Lcom/lge/homecube/LiveFolderInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 43
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_21

    .line 44
    const v3, 0x7f02002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-static {v0, p1}, Lcom/lge/homecube/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 46
    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/lge/homecube/LiveFolderInfo;->filtered:Z

    .line 48
    :cond_21
    invoke-virtual {v1, v5, v0, v5, v5}, Lcom/lge/homecube/LiveFolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v3, p3, Lcom/lge/homecube/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/lge/homecube/LiveFolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v1, p3}, Lcom/lge/homecube/LiveFolderIcon;->setTag(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v1, p1}, Lcom/lge/homecube/LiveFolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-object v1
.end method


# virtual methods
.method public acceptDrop(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)Z
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

.method public onDragEnter(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
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

.method public onDragExit(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
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

.method public onDragOver(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
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

.method public onDrop(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
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
