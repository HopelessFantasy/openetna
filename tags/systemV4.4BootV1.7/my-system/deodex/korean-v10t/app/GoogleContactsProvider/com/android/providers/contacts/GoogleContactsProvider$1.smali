.class Lcom/android/providers/contacts/GoogleContactsProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "GoogleContactsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/GoogleContactsProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/GoogleContactsProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/GoogleContactsProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/providers/contacts/GoogleContactsProvider$1;->this$0:Lcom/android/providers/contacts/GoogleContactsProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 84
    const-string v0, "com.android.providers.contacts.PURGE_CONTACTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 85
    iget-object v0, p0, Lcom/android/providers/contacts/GoogleContactsProvider$1;->this$0:Lcom/android/providers/contacts/GoogleContactsProvider;

    const-string v1, "account"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/contacts/GoogleContactsProvider;->access$000(Lcom/android/providers/contacts/GoogleContactsProvider;Ljava/lang/String;)V

    .line 87
    :cond_17
    return-void
.end method
