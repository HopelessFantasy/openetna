.class final Lcom/android/contacts/CallDetailActivity$ViewEntry;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public icon:I

.field public intent:Landroid/content/Intent;

.field public label:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .registers 6
    .parameter "icon"
    .parameter "text"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->icon:I

    .line 376
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    .line 377
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 378
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/String;

    .line 379
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->number:Ljava/lang/String;

    .line 382
    iput p1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->icon:I

    .line 383
    iput-object p2, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    .line 384
    iput-object p3, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 385
    return-void
.end method
