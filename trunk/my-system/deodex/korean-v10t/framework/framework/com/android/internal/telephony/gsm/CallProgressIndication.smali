.class public Lcom/android/internal/telephony/gsm/CallProgressIndication;
.super Ljava/lang/Object;
.source "CallProgressIndication.java"


# static fields
.field public static final NCM_PROGIND_BEARER_CHANGED:I = 0x2

.field public static final NCM_PROGIND_BEARER_RELEASED:I = 0x4

.field public static final NCM_PROGIND_ERROR:I = -0x1

.field public static final NCM_PROGIND_REMOTE_ALERT:I = 0x3

.field public static final NCM_PROGIND_USER_RESUMED:I = 0x1

.field public static final NCM_PROGIND_USER_RESUMED_DISCONNECT:I = 0x5

.field public static final NCM_PROGIND_USER_SUSPENDED:I


# instance fields
.field public call_progress:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/CallProgressIndication;->call_progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
