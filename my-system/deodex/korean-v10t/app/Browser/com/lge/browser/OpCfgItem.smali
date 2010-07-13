.class public final enum Lcom/lge/browser/OpCfgItem;
.super Ljava/lang/Enum;
.source "OpCfgItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/browser/OpCfgItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/browser/OpCfgItem;

.field public static final enum CFG_BOOKMARK_DO_NOT_EDIT_OR_DELETE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

.field public static final enum CFG_BOOKMARK_HIDE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

.field public static final enum CFG_DEFAULT_ACCEPT_LANGUAGE_HEADER:Lcom/lge/browser/OpCfgItem;

.field public static final enum CFG_DOWNLOAD_CHECK_CONTENT_SIZE:Lcom/lge/browser/OpCfgItem;

.field public static final enum CFG_DOWNLOAD_DISPLAY_DD:Lcom/lge/browser/OpCfgItem;

.field public static final enum CFG_DOWNLOAD_DISPLAY_FIRST_MIME_ONLY:Lcom/lge/browser/OpCfgItem;

.field public static final enum CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD:Lcom/lge/browser/OpCfgItem;

.field public static final enum CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

.field public static final enum CFG_DOWNLOAD_SUPPORT_DRM_20:Lcom/lge/browser/OpCfgItem;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/lge/browser/OpCfgItem;

    const-string v1, "CFG_DOWNLOAD_DISPLAY_DD"

    invoke-direct {v0, v1, v3}, Lcom/lge/browser/OpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_DD:Lcom/lge/browser/OpCfgItem;

    .line 6
    new-instance v0, Lcom/lge/browser/OpCfgItem;

    const-string v1, "CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR"

    invoke-direct {v0, v1, v4}, Lcom/lge/browser/OpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    .line 7
    new-instance v0, Lcom/lge/browser/OpCfgItem;

    const-string v1, "CFG_DOWNLOAD_DISPLAY_FIRST_MIME_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/lge/browser/OpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_FIRST_MIME_ONLY:Lcom/lge/browser/OpCfgItem;

    .line 8
    new-instance v0, Lcom/lge/browser/OpCfgItem;

    const-string v1, "CFG_DOWNLOAD_CHECK_CONTENT_SIZE"

    invoke-direct {v0, v1, v6}, Lcom/lge/browser/OpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_CHECK_CONTENT_SIZE:Lcom/lge/browser/OpCfgItem;

    .line 9
    new-instance v0, Lcom/lge/browser/OpCfgItem;

    const-string v1, "CFG_DOWNLOAD_SUPPORT_DRM_20"

    invoke-direct {v0, v1, v7}, Lcom/lge/browser/OpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM_20:Lcom/lge/browser/OpCfgItem;

    .line 10
    new-instance v0, Lcom/lge/browser/OpCfgItem;

    const-string v1, "CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/browser/OpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD:Lcom/lge/browser/OpCfgItem;

    .line 11
    new-instance v0, Lcom/lge/browser/OpCfgItem;

    const-string v1, "CFG_BOOKMARK_HIDE_OPERATOR_URL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/browser/OpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_HIDE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    .line 12
    new-instance v0, Lcom/lge/browser/OpCfgItem;

    const-string v1, "CFG_BOOKMARK_DO_NOT_EDIT_OR_DELETE_OPERATOR_URL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lge/browser/OpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_DO_NOT_EDIT_OR_DELETE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    .line 14
    new-instance v0, Lcom/lge/browser/OpCfgItem;

    const-string v1, "CFG_DEFAULT_ACCEPT_LANGUAGE_HEADER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lge/browser/OpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/browser/OpCfgItem;->CFG_DEFAULT_ACCEPT_LANGUAGE_HEADER:Lcom/lge/browser/OpCfgItem;

    .line 3
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/lge/browser/OpCfgItem;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_DD:Lcom/lge/browser/OpCfgItem;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_FIRST_MIME_ONLY:Lcom/lge/browser/OpCfgItem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_CHECK_CONTENT_SIZE:Lcom/lge/browser/OpCfgItem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM_20:Lcom/lge/browser/OpCfgItem;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD:Lcom/lge/browser/OpCfgItem;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_HIDE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_DO_NOT_EDIT_OR_DELETE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lge/browser/OpCfgItem;->CFG_DEFAULT_ACCEPT_LANGUAGE_HEADER:Lcom/lge/browser/OpCfgItem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/browser/OpCfgItem;->$VALUES:[Lcom/lge/browser/OpCfgItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/browser/OpCfgItem;
    .registers 2
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/lge/browser/OpCfgItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/browser/OpCfgItem;

    return-object p0
.end method

.method public static final values()[Lcom/lge/browser/OpCfgItem;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/lge/browser/OpCfgItem;->$VALUES:[Lcom/lge/browser/OpCfgItem;

    invoke-virtual {v0}, [Lcom/lge/browser/OpCfgItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/browser/OpCfgItem;

    return-object v0
.end method
