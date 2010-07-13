.class public final Lcom/android/contacts/LinkbookAsyncHelper$Feed;
.super Ljava/lang/Object;
.source "LinkbookAsyncHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/LinkbookAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Feed"
.end annotation


# static fields
.field public static final TYPE_FRIEND_REQUEST:Ljava/lang/String; = "FR"

.field public static final TYPE_MEDIA_COMMENT:Ljava/lang/String; = "MC"

.field public static final TYPE_PHOTO_POSTED:Ljava/lang/String; = "PP"

.field public static final TYPE_PROFILE_COMMENT:Ljava/lang/String; = "PC"

.field public static final TYPE_PROFILE_STATUS:Ljava/lang/String; = "PS"

.field public static final feedTypeList:[Ljava/lang/String;

.field private static final textTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const-string v6, "PS"

    const-string v5, "PP"

    const-string v4, "PC"

    const-string v3, "FR"

    .line 717
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PS"

    aput-object v6, v0, v1

    const/4 v1, 0x1

    const-string v2, "PC"

    aput-object v4, v0, v1

    const/4 v1, 0x2

    const-string v2, "PP"

    aput-object v5, v0, v1

    const/4 v1, 0x3

    const-string v2, "FR"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/contacts/LinkbookAsyncHelper$Feed;->feedTypeList:[Ljava/lang/String;

    .line 724
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/contacts/LinkbookAsyncHelper$Feed;->textTitleMap:Ljava/util/Map;

    .line 726
    sget-object v0, Lcom/android/contacts/LinkbookAsyncHelper$Feed;->textTitleMap:Ljava/util/Map;

    const-string v1, "PS"

    const v1, 0x7f060105

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    sget-object v0, Lcom/android/contacts/LinkbookAsyncHelper$Feed;->textTitleMap:Ljava/util/Map;

    const-string v1, "PC"

    const v1, 0x7f060106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    sget-object v0, Lcom/android/contacts/LinkbookAsyncHelper$Feed;->textTitleMap:Ljava/util/Map;

    const-string v1, "PP"

    const v1, 0x7f060107

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v0, Lcom/android/contacts/LinkbookAsyncHelper$Feed;->textTitleMap:Ljava/util/Map;

    const-string v1, "MC"

    const v2, 0x7f060108

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    sget-object v0, Lcom/android/contacts/LinkbookAsyncHelper$Feed;->textTitleMap:Ljava/util/Map;

    const-string v1, "FR"

    const v1, 0x7f060109

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .registers 1

    .prologue
    .line 711
    sget-object v0, Lcom/android/contacts/LinkbookAsyncHelper$Feed;->textTitleMap:Ljava/util/Map;

    return-object v0
.end method
