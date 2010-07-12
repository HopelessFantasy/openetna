.class public Lcom/android/internal/telephony/SmsResponse;
.super Ljava/lang/Object;
.source "SmsResponse.java"


# instance fields
.field ackPdu:Ljava/lang/String;

.field errorCode:I

.field messageRef:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4
    .parameter "messageRef"
    .parameter "ackPdu"
    .parameter "errorCode"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    .line 37
    iput-object p2, p0, Lcom/android/internal/telephony/SmsResponse;->ackPdu:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    .line 39
    return-void
.end method
