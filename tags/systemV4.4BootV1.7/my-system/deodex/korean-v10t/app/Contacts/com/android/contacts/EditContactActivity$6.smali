.class Lcom/android/contacts/EditContactActivity$6;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/EditContactActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1608
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity$6;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$6;->this$0:Lcom/android/contacts/EditContactActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/contacts/EditContactActivity;->removeDialog(I)V

    .line 1610
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$6;->this$0:Lcom/android/contacts/EditContactActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/contacts/EditContactActivity;->removeDialog(I)V

    .line 1611
    return-void
.end method
