.class Lcom/android/settings/InstalledAppDetails$2;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/InstalledAppDetails;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/InstalledAppDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/settings/InstalledAppDetails$2;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 482
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails$2;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-static {v0, v1, v1}, Lcom/android/settings/InstalledAppDetails;->access$600(Lcom/android/settings/InstalledAppDetails;ZZ)V

    .line 483
    return-void
.end method
