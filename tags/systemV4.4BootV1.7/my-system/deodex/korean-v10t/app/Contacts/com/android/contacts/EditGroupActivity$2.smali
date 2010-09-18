.class Lcom/android/contacts/EditGroupActivity$2;
.super Ljava/lang/Object;
.source "EditGroupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/EditGroupActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/EditGroupActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/EditGroupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/contacts/EditGroupActivity$2;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 655
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity$2;->this$0:Lcom/android/contacts/EditGroupActivity;

    iget-object v0, v0, Lcom/android/contacts/EditGroupActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity$2;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-static {v1}, Lcom/android/contacts/EditGroupActivity;->access$100(Lcom/android/contacts/EditGroupActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity$2;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-virtual {v0}, Lcom/android/contacts/EditGroupActivity;->finish()V

    .line 657
    return-void
.end method
