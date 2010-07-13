.class Lcom/android/contacts/EditContactActivity$3;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/EditContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/EditContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/EditContactActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity$3;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 551
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$3;->this$0:Lcom/android/contacts/EditContactActivity;

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$3;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v1}, Lcom/android/contacts/EditContactActivity;->access$100(Lcom/android/contacts/EditContactActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$3;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-virtual {v0}, Lcom/android/contacts/EditContactActivity;->finish()V

    .line 553
    return-void
.end method
