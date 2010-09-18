.class public Lcom/android/mms/ui/RecipientList$Recipient;
.super Ljava/lang/Object;
.source "RecipientList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recipient"
.end annotation


# static fields
.field private static final PHONE_NUMBER_SEPARATORS:Ljava/lang/String; = " ()-./"


# instance fields
.field public bcc:Z

.field public label:Ljava/lang/CharSequence;

.field public name:Ljava/lang/String;

.field public nameAndNumber:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public person_id:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    return-void
.end method

.method public static buildNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"
    .parameter "number"

    .prologue
    .line 250
    move-object v0, p1

    .line 251
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 252
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u200e<\u202a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u202a>\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    :goto_2e
    return-object v1

    :cond_2f
    move-object v1, v0

    goto :goto_2e
.end method

.method public static filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "phoneNumber"

    .prologue
    .line 196
    if-nez p0, :cond_4

    .line 197
    const/4 v4, 0x0

    .line 210
    :goto_3
    return-object v4

    .line 200
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 201
    .local v3, length:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 203
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v3, :cond_23

    .line 204
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 206
    .local v1, character:C
    const-string v4, " ()-./"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_20

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 210
    .end local v1           #character:C
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .registers 7
    .parameter "recipient"

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 140
    .local v3, len:I
    const/4 v1, 0x0

    .line 143
    .local v1, digits:I
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLatinAmerica()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 145
    if-lez v3, :cond_13

    const/4 v4, 0x3

    if-ge v3, v4, :cond_13

    move v4, v5

    .line 172
    :goto_12
    return v4

    .line 149
    :cond_13
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v3, :cond_43

    .line 150
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 152
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 149
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 156
    :cond_25
    const-string v4, " ()-./"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_22

    .line 162
    const/16 v4, 0x2b

    if-eq v0, v4, :cond_22

    const/16 v4, 0x23

    if-eq v0, v4, :cond_22

    const/16 v4, 0x2a

    if-eq v0, v4, :cond_22

    const/16 v4, 0x70

    if-eq v0, v4, :cond_22

    const/16 v4, 0x77

    if-eq v0, v4, :cond_22

    move v4, v5

    .line 166
    goto :goto_12

    .line 169
    .end local v0           #c:C
    :cond_43
    if-nez v1, :cond_47

    move v4, v5

    .line 170
    goto :goto_12

    .line 172
    :cond_47
    const/4 v4, 0x1

    goto :goto_12
.end method

.method public static isValid(Ljava/lang/String;)Z
    .registers 2
    .parameter "recipient"

    .prologue
    .line 123
    invoke-static {p0}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public filter()Lcom/android/mms/ui/RecipientList$Recipient;
    .registers 4

    .prologue
    .line 177
    new-instance v0, Lcom/android/mms/ui/RecipientList$Recipient;

    invoke-direct {v0}, Lcom/android/mms/ui/RecipientList$Recipient;-><init>()V

    .line 179
    .local v0, result:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-wide v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    iput-wide v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    .line 180
    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    .line 182
    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    :goto_1b
    iput-object v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 185
    iget-boolean v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    iput-boolean v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    .line 186
    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->nameAndNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->nameAndNumber:Ljava/lang/String;

    .line 187
    return-object v0

    .line 182
    :cond_26
    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " number= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nameAndNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->nameAndNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " person_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toToken()Ljava/lang/CharSequence;
    .registers 9

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 214
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->nameAndNumber:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 215
    .local v1, s:Landroid/text/SpannableString;
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 217
    .local v0, len:I
    if-nez v0, :cond_11

    .line 242
    :goto_10
    return-object v1

    .line 221
    :cond_11
    iget-wide v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_29

    .line 222
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "person_id"

    iget-wide v4, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 227
    :cond_29
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    if-eqz v2, :cond_39

    .line 228
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 231
    :cond_39
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4d

    .line 232
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "label"

    iget-object v4, p0, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 235
    :cond_4d
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    if-eqz v2, :cond_5d

    .line 236
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "number"

    iget-object v4, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 239
    :cond_5d
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "bcc"

    iget-boolean v4, p0, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_10
.end method
