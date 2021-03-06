.class public Lcom/android/phone/ProcessOutgoingCallTest;
.super Landroid/content/BroadcastReceiver;
.source "ProcessOutgoingCallTest.java"


# static fields
.field private static final AREACODE:Ljava/lang/String; = "617"

.field private static final BLOCK_555:Z = true

.field private static final LOGV:Z = false

.field private static final POUND_POUND_SEARCH:Z = true

.field private static final REDIRECT_411_TO_GOOG411:Z = true

.field private static final SEVEN_DIGIT_DIALING:Z = true

.field private static final TAG:Ljava/lang/String; = "ProcessOutgoingCallTest"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x7

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 45
    const-string v4, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, number:Ljava/lang/String;
    const-string v4, "411"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 49
    const-string v4, "18004664411"

    invoke-virtual {p0, v4}, Lcom/android/phone/ProcessOutgoingCallTest;->setResultData(Ljava/lang/String;)V

    .line 53
    :cond_21
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_3d

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "617"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/ProcessOutgoingCallTest;->setResultData(Ljava/lang/String;)V

    .line 58
    :cond_3d
    const-string v4, "##"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 59
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEARCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, newIntent:Landroid/content/Intent;
    const-string v4, "query"

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0, v7}, Lcom/android/phone/ProcessOutgoingCallTest;->setResultData(Ljava/lang/String;)V

    .line 70
    .end local v2           #newIntent:Landroid/content/Intent;
    :cond_61
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 71
    .local v1, length:I
    if-lt v1, v6, :cond_93

    .line 72
    sub-int v4, v1, v6

    const/4 v5, 0x4

    sub-int v5, v1, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, exchange:Ljava/lang/String;
    const-string v4, "ProcessOutgoingCallTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exchange = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v4, "555"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 75
    invoke-virtual {p0, v7}, Lcom/android/phone/ProcessOutgoingCallTest;->setResultData(Ljava/lang/String;)V

    .line 79
    .end local v0           #exchange:Ljava/lang/String;
    .end local v1           #length:I
    .end local v3           #number:Ljava/lang/String;
    :cond_93
    return-void
.end method
