.class Lcom/android/packageinstaller/PackageInstallerActivity$8;
.super Ljava/lang/Object;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/PackageInstallerActivity;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$8;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$8;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startActivity(Landroid/content/Intent;)V

    .line 216
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$8;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    .line 217
    return-void
.end method
