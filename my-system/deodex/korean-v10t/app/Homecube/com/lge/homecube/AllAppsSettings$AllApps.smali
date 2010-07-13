.class final Lcom/lge/homecube/AllAppsSettings$AllApps;
.super Ljava/lang/Object;
.source "AllAppsSettings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/AllAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AllApps"
.end annotation


# static fields
.field static final CONTAINER:Ljava/lang/String; = "container"

.field static final CONTENT_URI:Landroid/net/Uri; = null

.field static final CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri; = null

.field static final GROUP_ID:Ljava/lang/String; = "group_id"

.field static final ICON_TYPE_BITMAP:I = 0x1

.field static final ICON_TYPE_RESOURCE:I = 0x0

.field static final ID:Ljava/lang/String; = "_id"

.field static final INTENT:Ljava/lang/String; = "intent"

.field static final ORIGIN_GROUP_ID:Ljava/lang/String; = "original_group_id"

.field static final ORIGIN_POSITION:Ljava/lang/String; = "original_position"

.field static final POSITION:Ljava/lang/String; = "position"

.field static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string v0, "content://com.lge.homecube/favorites?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/homecube/AllAppsSettings$AllApps;->CONTENT_URI:Landroid/net/Uri;

    .line 33
    const-string v0, "content://com.lge.homecube/favorites?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/homecube/AllAppsSettings$AllApps;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getContentUri(JZ)Landroid/net/Uri;
    .registers 5
    .parameter "id"
    .parameter "notify"

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.lge.homecube/favorites/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
