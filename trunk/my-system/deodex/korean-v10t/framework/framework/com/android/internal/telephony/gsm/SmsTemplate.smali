.class public Lcom/android/internal/telephony/gsm/SmsTemplate;
.super Ljava/lang/Object;
.source "SmsTemplate.java"


# instance fields
.field smsc_addr:Ljava/lang/String;

.field validityperiod:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "validityperiod"
    .parameter "smsc_addr"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsTemplate;->validityperiod:I

    .line 21
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SmsTemplate;->smsc_addr:Ljava/lang/String;

    .line 22
    return-void
.end method
