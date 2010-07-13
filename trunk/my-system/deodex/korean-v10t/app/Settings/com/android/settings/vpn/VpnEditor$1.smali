.class Lcom/android/settings/vpn/VpnEditor$1;
.super Ljava/lang/Object;
.source "VpnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnEditor;->showCancellationConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnEditor;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings/vpn/VpnEditor$1;->this$0:Lcom/android/settings/vpn/VpnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "w"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor$1;->this$0:Lcom/android/settings/vpn/VpnEditor;

    invoke-virtual {v0}, Lcom/android/settings/vpn/VpnEditor;->finish()V

    .line 185
    return-void
.end method
