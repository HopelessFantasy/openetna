.class Lcom/lge/orangephotowidget/PhotoWidgetList$FileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoWidgetList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/orangephotowidget/PhotoWidgetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileListAdapter"
.end annotation


# static fields
.field private static mFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIcon:Landroid/graphics/Bitmap;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, file_list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 83
    sput-object p2, Lcom/lge/orangephotowidget/PhotoWidgetList$FileListAdapter;->mFileList:Ljava/util/List;

    .line 87
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 91
    sget-object v0, Lcom/lge/orangephotowidget/PhotoWidgetList$FileListAdapter;->mFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 96
    sget-object v0, Lcom/lge/orangephotowidget/PhotoWidgetList$FileListAdapter;->mFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;

    iget-object v0, p0, Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 104
    const-string v0, "PhotoWidgetList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileListAdapter getItemId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPath(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 101
    sget-object v0, Lcom/lge/orangephotowidget/PhotoWidgetList$FileListAdapter;->mFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;

    iget-object v0, p0, Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 109
    return-object p2
.end method
