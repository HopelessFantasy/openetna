.class public final Lcom/android/mms/Cbmi$Cbmis;
.super Ljava/lang/Object;
.source "Cbmi.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/Cbmi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cbmis"
.end annotation


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "channelid"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.lge.cbmi"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.lge.cbmi"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATED_DATE:Ljava/lang/String; = "created"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "created ASC"

.field public static final SELECTED:Ljava/lang/String; = "selected"

.field public static final SIM_INDEX:Ljava/lang/String; = "simindex"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TITLE_LENGTH:Ljava/lang/String; = "titlelength"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "content://cbs/channels"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/Cbmi$Cbmis;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
