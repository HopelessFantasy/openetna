.class public Lcom/lge/orangephotowidget/UploadListActivity;
.super Landroid/app/ListActivity;
.source "UploadListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter;
    }
.end annotation


# static fields
.field private static final DATA:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "OrangePhotoWidgetProvider"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 171
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Orange Photo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Pikeo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Facebook"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Flickr"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/orangephotowidget/UploadListActivity;->DATA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/lge/orangephotowidget/UploadListActivity;->DATA:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const-string v0, "OrangePhotoWidgetProvider"

    const-string v1, "getView     hwang072"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter;

    invoke-direct {v0, p0}, Lcom/lge/orangephotowidget/UploadListActivity$UploadListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/lge/orangephotowidget/UploadListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    return-void
.end method
