.class public final Landroid/provider/Contacts$GroupPhotos;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$GroupPhotosColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupPhotos"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "groupphotos"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "group_id ASC"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2085
    const-string v0, "content://contacts/groupphotos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$GroupPhotos;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
