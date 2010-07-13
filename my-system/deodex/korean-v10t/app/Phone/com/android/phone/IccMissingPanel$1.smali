.class Lcom/android/phone/IccMissingPanel$1;
.super Ljava/lang/Object;
.source "IccMissingPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccMissingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccMissingPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccMissingPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/phone/IccMissingPanel$1;->this$0:Lcom/android/phone/IccMissingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/IccMissingPanel$1;->this$0:Lcom/android/phone/IccMissingPanel;

    invoke-virtual {v0}, Lcom/android/phone/IccMissingPanel;->dismiss()V

    .line 44
    return-void
.end method
