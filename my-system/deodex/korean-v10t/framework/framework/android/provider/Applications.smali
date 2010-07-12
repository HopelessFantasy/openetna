.class public Landroid/provider/Applications;
.super Ljava/lang/Object;
.source "Applications.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "applications"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "Applications"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const-string v0, "content://applications"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Applications;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
