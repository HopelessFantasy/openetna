.class Lcom/android/internal/widget/EditStyledText$StyledTextDialog$4;
.super Ljava/lang/Object;
.source "EditStyledText.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->onShowAlignAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog$4;->this$1:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1440
    const-string v1, "EditStyledText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBuilder.onclick:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1442
    .local v0, align:Landroid/text/Layout$Alignment;
    packed-switch p2, :pswitch_data_2e

    .line 1455
    :goto_1d
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog$4;->this$1:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    iget-object v1, v1, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/EditStyledText;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1456
    return-void

    .line 1444
    :pswitch_25
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1445
    goto :goto_1d

    .line 1447
    :pswitch_28
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1448
    goto :goto_1d

    .line 1450
    :pswitch_2b
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 1451
    goto :goto_1d

    .line 1442
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method
