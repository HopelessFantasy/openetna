.class public final Landroid/provider/Contacts$Phones;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$PhonesColumns;
.implements Landroid/provider/Contacts$PeopleColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phones"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URL:Landroid/net/Uri; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/phone"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final PERSON_ID:Ljava/lang/String; = "person"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1217
    const-string v0, "content://contacts/phones"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 1223
    const-string v0, "content://contacts/phones/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "context"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 1211
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .parameter "context"
    .parameter "type"
    .parameter "label"
    .parameter "labelArray"

    .prologue
    .line 1190
    const-string v0, ""

    .line 1192
    .local v0, display:Ljava/lang/CharSequence;
    if-eqz p1, :cond_1f

    .line 1193
    if-eqz p3, :cond_d

    move-object v2, p3

    .line 1197
    .local v2, labels:[Ljava/lang/CharSequence;
    :goto_7
    const/4 v3, 0x1

    sub-int v3, p1, v3

    :try_start_a
    aget-object v0, v2, v3
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_c} :catch_1a

    .line 1206
    .end local v2           #labels:[Ljava/lang/CharSequence;
    :cond_c
    :goto_c
    return-object v0

    .line 1193
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, v3

    goto :goto_7

    .line 1198
    .restart local v2       #labels:[Ljava/lang/CharSequence;
    :catch_1a
    move-exception v1

    .line 1199
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v3, 0x0

    aget-object v0, v2, v3

    goto :goto_c

    .line 1202
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2           #labels:[Ljava/lang/CharSequence;
    :cond_1f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1203
    move-object v0, p2

    goto :goto_c
.end method
