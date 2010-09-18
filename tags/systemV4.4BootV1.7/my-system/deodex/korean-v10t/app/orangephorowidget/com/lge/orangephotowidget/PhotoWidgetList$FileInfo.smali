.class public Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;
.super Ljava/lang/Object;
.source "PhotoWidgetList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/orangephotowidget/PhotoWidgetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileInfo"
.end annotation


# instance fields
.field mFileName:Ljava/lang/String;

.field mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "path"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;->mFileName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;->mFilePath:Ljava/lang/String;

    .line 65
    return-void
.end method
