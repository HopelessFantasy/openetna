.class public Lcom/lge/browser/OpCfgManager;
.super Ljava/lang/Object;
.source "OpCfgManager.java"


# static fields
.field private static sOpCfgManager:Lcom/lge/browser/OpCfgManager;


# instance fields
.field private mOpIntCfgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lge/browser/OpCfgItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOpStrCfgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lge/browser/OpCfgItem;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/browser/OpCfgManager;->mOpStrCfgMap:Ljava/util/HashMap;

    .line 16
    return-void
.end method

.method private addATTCfgItems()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_FIRST_MIME_ONLY:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_CHECK_CONTENT_SIZE:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM_20:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_HIDE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_DO_NOT_EDIT_OR_DELETE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpStrCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DEFAULT_ACCEPT_LANGUAGE_HEADER:Lcom/lge/browser/OpCfgItem;

    const-string v2, "en, fr, es"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method private addDefaultCfgItems()V
    .registers 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/lge/browser/OpCfgManager;->addOPENCfgItems()V

    .line 191
    return-void
.end method

.method private addH3GCfgItems()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_FIRST_MIME_ONLY:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_CHECK_CONTENT_SIZE:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM_20:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_HIDE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_DO_NOT_EDIT_OR_DELETE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpStrCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DEFAULT_ACCEPT_LANGUAGE_HEADER:Lcom/lge/browser/OpCfgItem;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method private addOPENCfgItems()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_FIRST_MIME_ONLY:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_CHECK_CONTENT_SIZE:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM_20:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_HIDE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_DO_NOT_EDIT_OR_DELETE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpStrCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DEFAULT_ACCEPT_LANGUAGE_HEADER:Lcom/lge/browser/OpCfgItem;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void
.end method

.method private addORGCfgItems()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_FIRST_MIME_ONLY:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_CHECK_CONTENT_SIZE:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM_20:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_HIDE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_DO_NOT_EDIT_OR_DELETE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpStrCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DEFAULT_ACCEPT_LANGUAGE_HEADER:Lcom/lge/browser/OpCfgItem;

    const-string v2, "en, fr, es, pt, ch, sk, ro, de, it"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method private addOpCfgItems()V
    .registers 2

    .prologue
    .line 38
    invoke-static {}, Lcom/lge/browser/LocaleManager;->getOperator()I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 63
    :goto_7
    :pswitch_7
    invoke-direct {p0}, Lcom/lge/browser/OpCfgManager;->addDefaultCfgItems()V

    .line 66
    :goto_a
    return-void

    .line 40
    :pswitch_b
    invoke-direct {p0}, Lcom/lge/browser/OpCfgManager;->addVDFCfgItems()V

    goto :goto_a

    .line 43
    :pswitch_f
    invoke-direct {p0}, Lcom/lge/browser/OpCfgManager;->addTMOCfgItems()V

    goto :goto_a

    .line 46
    :pswitch_13
    invoke-direct {p0}, Lcom/lge/browser/OpCfgManager;->addORGCfgItems()V

    goto :goto_a

    .line 49
    :pswitch_17
    invoke-direct {p0}, Lcom/lge/browser/OpCfgManager;->addH3GCfgItems()V

    goto :goto_a

    .line 52
    :pswitch_1b
    invoke-direct {p0}, Lcom/lge/browser/OpCfgManager;->addTIMCfgItems()V

    goto :goto_a

    .line 55
    :pswitch_1f
    invoke-direct {p0}, Lcom/lge/browser/OpCfgManager;->addATTCfgItems()V

    goto :goto_a

    .line 58
    :pswitch_23
    invoke-direct {p0}, Lcom/lge/browser/OpCfgManager;->addRogersCfgItems()V

    goto :goto_a

    .line 61
    :pswitch_27
    invoke-direct {p0}, Lcom/lge/browser/OpCfgManager;->addOPENCfgItems()V

    goto :goto_7

    .line 38
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_17
        :pswitch_7
        :pswitch_13
        :pswitch_27
        :pswitch_7
        :pswitch_7
        :pswitch_1b
        :pswitch_7
        :pswitch_f
        :pswitch_7
        :pswitch_7
        :pswitch_b
        :pswitch_7
        :pswitch_23
    .end packed-switch
.end method

.method private addRogersCfgItems()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_FIRST_MIME_ONLY:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_CHECK_CONTENT_SIZE:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM_20:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_HIDE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_DO_NOT_EDIT_OR_DELETE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpStrCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DEFAULT_ACCEPT_LANGUAGE_HEADER:Lcom/lge/browser/OpCfgItem;

    const-string v2, "en, fr, es"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method private addTIMCfgItems()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_FIRST_MIME_ONLY:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_CHECK_CONTENT_SIZE:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM_20:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_HIDE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_DO_NOT_EDIT_OR_DELETE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpStrCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DEFAULT_ACCEPT_LANGUAGE_HEADER:Lcom/lge/browser/OpCfgItem;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method private addTMOCfgItems()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_FIRST_MIME_ONLY:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_CHECK_CONTENT_SIZE:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM_20:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_HIDE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_DO_NOT_EDIT_OR_DELETE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpStrCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DEFAULT_ACCEPT_LANGUAGE_HEADER:Lcom/lge/browser/OpCfgItem;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method private addVDFCfgItems()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_FIRST_MIME_ONLY:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_CHECK_CONTENT_SIZE:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM_20:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_HIDE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_DO_NOT_EDIT_OR_DELETE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpStrCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/browser/OpCfgItem;->CFG_DEFAULT_ACCEPT_LANGUAGE_HEADER:Lcom/lge/browser/OpCfgItem;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public static getIntValue(Lcom/lge/browser/OpCfgItem;)I
    .registers 2
    .parameter "item"

    .prologue
    .line 19
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    if-nez v0, :cond_10

    .line 20
    new-instance v0, Lcom/lge/browser/OpCfgManager;

    invoke-direct {v0}, Lcom/lge/browser/OpCfgManager;-><init>()V

    sput-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    .line 21
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    invoke-direct {v0}, Lcom/lge/browser/OpCfgManager;->addOpCfgItems()V

    .line 24
    :cond_10
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getStrValue(Lcom/lge/browser/OpCfgItem;)Ljava/lang/String;
    .registers 2
    .parameter "item"

    .prologue
    .line 28
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    if-nez v0, :cond_10

    .line 29
    new-instance v0, Lcom/lge/browser/OpCfgManager;

    invoke-direct {v0}, Lcom/lge/browser/OpCfgManager;-><init>()V

    sput-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    .line 30
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    invoke-direct {v0}, Lcom/lge/browser/OpCfgManager;->addOpCfgItems()V

    .line 33
    :cond_10
    sget-object v0, Lcom/lge/browser/OpCfgManager;->sOpCfgManager:Lcom/lge/browser/OpCfgManager;

    iget-object v0, v0, Lcom/lge/browser/OpCfgManager;->mOpStrCfgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
