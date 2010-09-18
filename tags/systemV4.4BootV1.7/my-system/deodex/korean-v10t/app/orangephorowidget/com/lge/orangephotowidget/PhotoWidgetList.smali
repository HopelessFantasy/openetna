.class public Lcom/lge/orangephotowidget/PhotoWidgetList;
.super Ljava/lang/Object;
.source "PhotoWidgetList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/orangephotowidget/PhotoWidgetList$FileListAdapter;,
        Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoWidgetList"

.field private static current_dir:Ljava/lang/String;

.field public static directory:Ljava/lang/String;

.field public static items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static items_length:I

.field private static start_dir:Ljava/lang/String;


# instance fields
.field protected mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/orangephotowidget/PhotoWidgetList;->items:Ljava/util/List;

    .line 67
    const-string v0, "/sdcard"

    sput-object v0, Lcom/lge/orangephotowidget/PhotoWidgetList;->start_dir:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/lge/orangephotowidget/PhotoWidgetList;->start_dir:Ljava/lang/String;

    sput-object v0, Lcom/lge/orangephotowidget/PhotoWidgetList;->current_dir:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/lge/orangephotowidget/PhotoWidgetList;->items_length:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static fill(Ljava/io/File;)V
    .registers 13
    .parameter "file"

    .prologue
    const-string v11, "items : "

    const-string v10, "PhotoWidgetList"

    .line 122
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/lge/orangephotowidget/PhotoWidgetList;->current_dir:Ljava/lang/String;

    .line 130
    :try_start_a
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_60

    move-result-object v3

    .line 136
    .local v3, files:[Ljava/io/File;
    const-string v8, "PhotoWidgetList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fill file_count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v8, "PhotoWidgetList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fill file_path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " vs. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/lge/orangephotowidget/PhotoWidgetList;->start_dir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v4, 0x0

    .line 145
    .local v4, i:I
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_53
    if-ge v5, v7, :cond_18d

    aget-object v2, v0, v5

    .line 153
    .local v2, fileItem:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v8

    if-eqz v8, :cond_69

    .line 145
    :cond_5d
    :goto_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    .line 131
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #fileItem:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i:I
    .end local v5           #i$:I
    .end local v7           #len$:I
    :catch_60
    move-exception v1

    .line 132
    .local v1, ex:Ljava/lang/Exception;
    const-string v8, "PhotoWidgetList"

    const-string v8, "listFile Error."

    invoke-static {v10, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v1           #ex:Ljava/lang/Exception;
    :goto_68
    return-void

    .line 156
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v2       #fileItem:Ljava/io/File;
    .restart local v3       #files:[Ljava/io/File;
    .restart local v4       #i:I
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    :cond_69
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 157
    const-string v8, "PhotoWidgetList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "canRead.. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_be

    .line 161
    const-string v8, "PhotoWidgetList"

    const-string v8, "isDirectory"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/lge/orangephotowidget/PhotoWidgetList;->directory:Ljava/lang/String;

    .line 163
    const-string v8, "PhotoWidgetList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "directory name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/lge/orangephotowidget/PhotoWidgetList;->directory:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v8, Lcom/lge/orangephotowidget/PhotoWidgetList;->directory:Ljava/lang/String;

    invoke-static {v8}, Lcom/lge/orangephotowidget/PhotoWidgetList;->fillDirectory(Ljava/lang/String;)V

    goto :goto_5d

    .line 168
    :cond_be
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14e

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".JPG"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14e

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".bmp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14e

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".BMP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14e

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14e

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".PNG"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14e

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".jpeg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14e

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".JPEG"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14e

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".gif"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14e

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".GIF"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14e

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".wbmp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14e

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".WBMP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 174
    :cond_14e
    const-string v8, "PhotoWidgetList"

    const-string v8, "is jpg"

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v6, Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v6, info:Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;
    sget-object v8, Lcom/lge/orangephotowidget/PhotoWidgetList;->items:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    const-string v8, "PhotoWidgetList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "items : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    add-int/lit8 v4, v4, 0x1

    .line 192
    sget v8, Lcom/lge/orangephotowidget/PhotoWidgetList;->items_length:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/lge/orangephotowidget/PhotoWidgetList;->items_length:I

    goto/16 :goto_5d

    .line 197
    .end local v2           #fileItem:Ljava/io/File;
    .end local v6           #info:Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;
    :cond_18d
    const-string v8, "PhotoWidgetList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "items : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/lge/orangephotowidget/PhotoWidgetList;->items:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_68
.end method

.method private static fillDirectory(Ljava/lang/String;)V
    .registers 3
    .parameter "directory"

    .prologue
    .line 208
    const-string v0, "PhotoWidgetList"

    const-string v1, "fillDirectory fuction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lge/orangephotowidget/PhotoWidgetList;->fill(Ljava/io/File;)V

    .line 211
    return-void
.end method

.method public static fillWithRoot()V
    .registers 2

    .prologue
    .line 116
    const-string v0, "PhotoWidgetList"

    const-string v1, "fillWithRoot"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/orangephotowidget/PhotoWidgetList;->items:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/lge/orangephotowidget/PhotoWidgetList;->start_dir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lge/orangephotowidget/PhotoWidgetList;->fill(Ljava/io/File;)V

    .line 119
    return-void
.end method
