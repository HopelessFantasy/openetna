.class Lcom/android/contacts/EditGroupActivity$4;
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
    .line 665
    iput-object p1, p0, Lcom/android/contacts/EditGroupActivity$4;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity$4;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-virtual {v0}, Lcom/android/contacts/EditGroupActivity;->finish()V

    .line 667
    return-void
.end method
