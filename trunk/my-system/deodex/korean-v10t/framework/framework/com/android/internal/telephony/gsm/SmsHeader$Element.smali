.class public Lcom/android/internal/telephony/gsm/SmsHeader$Element;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Element"
.end annotation


# instance fields
.field private m_data:[B

.field private m_id:I


# direct methods
.method public constructor <init>(I[B)V
    .registers 3
    .parameter "id"
    .parameter "data"

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsHeader$Element;->m_id:I

    .line 217
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SmsHeader$Element;->m_data:[B

    .line 218
    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsHeader$Element;->m_data:[B

    return-object v0
.end method

.method public getID()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsHeader$Element;->m_id:I

    return v0
.end method
