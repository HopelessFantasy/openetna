.class Landroid/content/IntentSender$FinishedDispatcher;
.super Landroid/content/IIntentReceiver$Stub;
.source "IntentSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishedDispatcher"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private final mIntentSender:Landroid/content/IntentSender;

.field private mResultCode:I

.field private mResultData:Ljava/lang/String;

.field private mResultExtras:Landroid/os/Bundle;

.field private final mWho:Landroid/content/IntentSender$OnFinished;


# direct methods
.method constructor <init>(Landroid/content/IntentSender;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    .registers 4
    .parameter "pi"
    .parameter "who"
    .parameter "handler"

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 111
    iput-object p1, p0, Landroid/content/IntentSender$FinishedDispatcher;->mIntentSender:Landroid/content/IntentSender;

    .line 112
    iput-object p2, p0, Landroid/content/IntentSender$FinishedDispatcher;->mWho:Landroid/content/IntentSender$OnFinished;

    .line 113
    iput-object p3, p0, Landroid/content/IntentSender$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    .line 114
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .registers 7
    .parameter "intent"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "serialized"

    .prologue
    .line 117
    iput-object p1, p0, Landroid/content/IntentSender$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    .line 118
    iput p2, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultCode:I

    .line 119
    iput-object p3, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultData:Ljava/lang/String;

    .line 120
    iput-object p4, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    .line 121
    iget-object v0, p0, Landroid/content/IntentSender$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_10

    .line 122
    invoke-virtual {p0}, Landroid/content/IntentSender$FinishedDispatcher;->run()V

    .line 126
    :goto_f
    return-void

    .line 124
    :cond_10
    iget-object v0, p0, Landroid/content/IntentSender$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public run()V
    .registers 7

    .prologue
    .line 128
    iget-object v0, p0, Landroid/content/IntentSender$FinishedDispatcher;->mWho:Landroid/content/IntentSender$OnFinished;

    iget-object v1, p0, Landroid/content/IntentSender$FinishedDispatcher;->mIntentSender:Landroid/content/IntentSender;

    iget-object v2, p0, Landroid/content/IntentSender$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    iget v3, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultCode:I

    iget-object v4, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultData:Ljava/lang/String;

    iget-object v5, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    invoke-interface/range {v0 .. v5}, Landroid/content/IntentSender$OnFinished;->onSendFinished(Landroid/content/IntentSender;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 130
    return-void
.end method
