.class public final Lcom/android/mms/CbLanguage$CbLanguages;
.super Ljava/lang/Object;
.source "CbLanguage.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/CbLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CbLanguages"
.end annotation


# static fields
.field public static final CBMI_LANGUAGE_ARABIC:Ljava/lang/String; = "cbmilanguagearabic"

.field public static final CBMI_LANGUAGE_BULARIAN:Ljava/lang/String; = "cbmilanguagebularian"

.field public static final CBMI_LANGUAGE_CHINESESI:Ljava/lang/String; = "cbmilanguagechinesesi"

.field public static final CBMI_LANGUAGE_CHINESETR:Ljava/lang/String; = "cbmilanguagechinesetr"

.field public static final CBMI_LANGUAGE_CZECH:Ljava/lang/String; = "cbmilanguageczech"

.field public static final CBMI_LANGUAGE_DANISH:Ljava/lang/String; = "cbmilanguagedanish"

.field public static final CBMI_LANGUAGE_DEUTSCH:Ljava/lang/String; = "cbmilanguagedeutsch"

.field public static final CBMI_LANGUAGE_DUTCH:Ljava/lang/String; = "cbmilanguagedutch"

.field public static final CBMI_LANGUAGE_ENGLISH:Ljava/lang/String; = "cbmilanguageenglish"

.field public static final CBMI_LANGUAGE_FRENCH:Ljava/lang/String; = "cbmilanguagefrench"

.field public static final CBMI_LANGUAGE_GREEK:Ljava/lang/String; = "cbmilanguagegreek"

.field public static final CBMI_LANGUAGE_HEBREW:Ljava/lang/String; = "cbmilanguagehebrew"

.field public static final CBMI_LANGUAGE_HUNGARIAN:Ljava/lang/String; = "cbmilanguagehungarian"

.field public static final CBMI_LANGUAGE_ITALIANO:Ljava/lang/String; = "cbmilanguageitaliano"

.field public static final CBMI_LANGUAGE_KOREAN:Ljava/lang/String; = "cbmilanguagekorean"

.field public static final CBMI_LANGUAGE_POLISH:Ljava/lang/String; = "cbmilanguagepolish"

.field public static final CBMI_LANGUAGE_PORTUGUESE:Ljava/lang/String; = "cbmilanguageportuguese"

.field public static final CBMI_LANGUAGE_ROMANIAN:Ljava/lang/String; = "cbmilanguageromanian"

.field public static final CBMI_LANGUAGE_RUSSIAN:Ljava/lang/String; = "cbmilanguagerussian"

.field public static final CBMI_LANGUAGE_SERBOCROAT:Ljava/lang/String; = "cbmilanguageserbocroat"

.field public static final CBMI_LANGUAGE_SLOVAK:Ljava/lang/String; = "cbmilanguageslovak"

.field public static final CBMI_LANGUAGE_SLOVENIAN:Ljava/lang/String; = "cbmilanguageslovenian"

.field public static final CBMI_LANGUAGE_SPANISH:Ljava/lang/String; = "cbmilanguagespanish"

.field public static final CBMI_LANGUAGE_SWEDISH:Ljava/lang/String; = "cbmilanguageswedish"

.field public static final CBMI_LANGUAGE_TURKISH:Ljava/lang/String; = "cbmilanguageturkish"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.lge.cblanguage"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.lge.cblanguage"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "cbmilanguageenglish ASC"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "content://cblang/languages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/CbLanguage$CbLanguages;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
