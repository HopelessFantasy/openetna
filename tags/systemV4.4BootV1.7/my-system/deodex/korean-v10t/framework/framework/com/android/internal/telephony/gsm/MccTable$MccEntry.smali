.class Lcom/android/internal/telephony/gsm/MccTable$MccEntry;
.super Ljava/lang/Object;
.source "MccTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/MccTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MccEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/telephony/gsm/MccTable$MccEntry;",
        ">;"
    }
.end annotation


# instance fields
.field iso:Ljava/lang/String;

.field language:Ljava/lang/String;

.field mcc:I

.field smallestDigitsMnc:I

.field timezone:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .registers 5
    .parameter "mnc"
    .parameter "iso"
    .parameter "smallestDigitsMCC"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 41
    return-void
.end method

.method constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .registers 11
    .parameter "mnc"
    .parameter "iso"
    .parameter "smallestDigitsMCC"
    .parameter "timezone"

    .prologue
    .line 44
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "mnc"
    .parameter "iso"
    .parameter "smallestDigitsMCC"
    .parameter "timezone"
    .parameter "language"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;->mcc:I

    .line 49
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;->iso:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;->smallestDigitsMnc:I

    .line 51
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;->timezone:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;->language:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/gsm/MccTable$MccEntry;)I
    .registers 4
    .parameter "o"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;->mcc:I

    iget v1, p1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;->mcc:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/MccTable$MccEntry;->compareTo(Lcom/android/internal/telephony/gsm/MccTable$MccEntry;)I

    move-result v0

    return v0
.end method
