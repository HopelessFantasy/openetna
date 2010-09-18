.class Lcom/android/internal/telephony/gsm/stk/SetEventListParams;
.super Lcom/android/internal/telephony/gsm/stk/CommandParams;
.source "CommandParams.java"


# instance fields
.field eventInfo:Lcom/android/internal/telephony/gsm/stk/SetEventList;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/SetEventList;)V
    .registers 3
    .parameter "cmdDet"
    .parameter "eventInfo"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    .line 89
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/SetEventListParams;->eventInfo:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    .line 90
    return-void
.end method
