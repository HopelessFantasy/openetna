.class Lcom/android/contacts/ShowOrCreateActivity$IntentClickListener;
.super Ljava/lang/Object;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ShowOrCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentClickListener"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mParent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3
    .parameter "parent"
    .parameter "intent"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/android/contacts/ShowOrCreateActivity$IntentClickListener;->mParent:Landroid/app/Activity;

    .line 164
    iput-object p2, p0, Lcom/android/contacts/ShowOrCreateActivity$IntentClickListener;->mIntent:Landroid/content/Intent;

    .line 165
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/ShowOrCreateActivity$IntentClickListener;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_b

    .line 169
    iget-object v0, p0, Lcom/android/contacts/ShowOrCreateActivity$IntentClickListener;->mParent:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/contacts/ShowOrCreateActivity$IntentClickListener;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 171
    :cond_b
    iget-object v0, p0, Lcom/android/contacts/ShowOrCreateActivity$IntentClickListener;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 172
    return-void
.end method
