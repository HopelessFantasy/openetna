.class public Landroid/speech/RecognitionServiceUtil;
.super Ljava/lang/Object;
.source "RecognitionServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/RecognitionServiceUtil$Connection;,
        Landroid/speech/RecognitionServiceUtil$NullListener;
    }
.end annotation


# static fields
.field public static final CONTACT_AUTH_TOKEN:Ljava/lang/String; = "contactAuthToken"

.field public static final NOISE_LEVEL:Ljava/lang/String; = "NoiseLevel"

.field public static final SIGNAL_NOISE_RATIO:Ljava/lang/String; = "SignalNoiseRatio"

.field public static final USE_LOCATION:Ljava/lang/String; = "useLocation"

.field public static final sDefaultIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/speech/RecognitionServiceUtil;->sDefaultIntent:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
